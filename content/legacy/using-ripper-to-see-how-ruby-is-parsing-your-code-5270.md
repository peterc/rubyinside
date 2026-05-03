---
title: Using Ripper to See How Ruby Is Parsing Your Code
date: '2011-08-05'
author: Peter Cooper
author_slug: admin
post_id: 5270
slug: using-ripper-to-see-how-ruby-is-parsing-your-code-5270
url: "/using-ripper-to-see-how-ruby-is-parsing-your-code-5270.html"
categories:
- tutorials
---

{{< rawhtml >}}
<p><img src="/assets/2011/08/elementary.gif" alt="" title="elementary" width="120" height="120" style="float: right; margin-left: 18px; margin-bottom: 18px;" class="alignnone size-full wp-image-5271">In the past couple of months I've seen situations arise where developers aren't entirely sure how Ruby has chosen to interpret their code. Luckily, Ruby 1.9 comes with a built-in library called Ripper that can help solve the problem (there's a 1.8 version too, see later). Here, I give the 30 second rundown on what to do.</p>
<h3>A Mystery To Solve</h3>
<p>I've seen this confusion appear twice in the last month (the second time was what inspired me to write this post):</p>
<pre>&gt; puts {}.class

 =&gt; NilClass</pre>
<p>Despite thinking that we should be seeing <code>Hash</code> appear, we don't. We get a blank line and NilClass in response. It doesn't get any better if you start prodding:</p>
<pre>&gt; puts { :x =&gt; 10 }.class
SyntaxError: (irb):19: syntax error, unexpected tASSOC, expecting '}'</pre>
<p>What!?</p>
<p>Thankfully, you don't need to wonder any more. Even if you can have a good guess at what's going on, it's possible to lean on Ripper to figure things out.</p>
<h3>What is Ripper?</h3>
<p>Ripper is a library introduced in MRI Ruby 1.9 that hooks directly into Ruby 1.9's parser and which can provide you with abstract syntax trees or simple lexical analysis of the code that you provide. This can be useful to work out why Ruby is interpreting a given piece of code in a certain way, such as our troublemaker above.</p>
<p>The following tip isn't going to be a full breakdown of what Ripper does, of course, but there are already posts out there to help with that. Check out <a href="http://www.artweb-design.de/2009/7/5/using-ruby-1-9-ripper">Using Ruby 1.9 Ripper</a> by Sven Fuchs for starters.</p>
<h3>How to Solve Our Mystery</h3>
<p>So what is <code>puts {}.class</code> up to?</p>
<p>Getting Ripper to give us its interpretation of events (and therefore the interpretation of what Ruby 1.9 is seeing when it parses the code) is easy:</p>
<pre>p Ripper.sexp("puts {}.class")

[:program, [[:call, [:method_add_block, [:method_add_arg, [:fcall, [:@ident, "puts", [1, 0]]], []], [:brace_block, nil, [[:void_stmt]]]], :".", [:@ident, "class", [1, 8]]]]]</pre>
<p>Not exactly the easiest thing in the world to read, so I suggest you <code>gem install awesome_print</code> (see our <a href="awesome_print-a-new-pretty-printer-for-your-ruby-objects-3208.html">writeup on why it's so awesome</a>) and then try:</p>
<pre>require 'ap'
ap Ripper.sexp("puts {}.class")

[
    [0] :program,
    [1] [
        [0] [
            [0] :call,
            [1] [
                [0] :method_add_block,
                [1] [
                    [0] :method_add_arg,
                    [1] [
                        [0] :fcall,
                        [1] [
                            [0] :@ident,
                            [1] "puts",
                            [2] [
                                [0] 1,
                                [1] 0
                            ]
                        ]
                    ],
                    [2] []
                ],
                [2] [
                    [0] :brace_block,
                    [1] nil,
                    [2] [
                        [0] [
                            [0] :void_stmt
                        ]
                    ]
                ]
            ],
            [2] :".",
            [3] [
                [0] :@ident,
                [1] "class",
                [2] [
                    [0] 1,
                    [1] 8
                ]
            ]
        ]
    ]
]</pre>
<p>There are very few people who will be ready to confidently interpret this output out of the box, but if we pick through it we can get some significant clues as to what's going on. It is important to keep track of the nesting.</p>
<p>Note that the first nested section starts with <code>:call</code> and then has some nested sections starting with <code>:method_add_block</code> and <code>:brace_block</code>. A function call (fcall) to <code>puts</code> is then associated with that block. Later on, <code>.</code> (to call a method/send a message) is invoked, and then the <code>"class"</code> message passed upon that block. So what's happening?</p>
<p>It turns out that Ruby is interpreting the {} as a <em>code block</em> being used upon <code>puts</code>! It's not a hash, but a code block! If you rewrite the code a little to remove the ambiguity and try again, what happens?</p>
<pre>ap Ripper.sexp("puts({}.class)")
[
    [0] :program,
    [1] [
        [0] [
            [0] :method_add_arg,
            [1] [
                [0] :fcall,
                [1] [
                    [0] :@ident,
                    [1] "puts",
                    [2] [
                        [0] 1,
                        [1] 0
                    ]
                ]
            ],
            [2] [
                [0] :arg_paren,
                [1] [
                    [0] :args_add_block,
                    [1] [
                        [0] [
                            [0] :call,
                            [1] [
                                [0] :hash,
                                [1] nil
                            ],
                            [2] :".",
                            [3] [
                                [0] :@ident,
                                [1] "class",
                                [2] [
                                    [0] 1,
                                    [1] 8
                                ]
                            ]
                        ]
                    ],
                    [2] false
                ]
            ]
        ]
    ]
]</pre>
<p>It should be immediately apparent once you walk through <em>this</em> syntax tree array that things are now good. In the second nested section you should be able to make out a <code>:call</code> section whose first argument is a <code>:hash</code>, then the <code>.</code>, and then the <code>class</code> message. This means we have a hash upon which the <code>class</code> method is being called - the behavior we <em>wanted</em> :-)</p>
<p>Needless to say, it can get more complicated than that, and syntax trees can get significantly deeper too, but if you get stuck on an obscure parsing error or simply want to dig into what Ruby is up to when it's parsing your code, give Ripper a quick spin.</p>
<h3>But I'm on Ruby 1.8!</h3>
<p>Despite being a Ruby 1.9ism, Ripper has been <a href="https://github.com/lsegal/ripper18">ported to Ruby 1.8 by Loren Segal</a>. He has also <a href="http://gnuu.org/2011/01/12/announcing-ripper-for-ruby-1-8-x/">written a blog post about it</a>. I've not tried it (I'm a fully paid up 1.9 guy nowadays) but it's worth a try if you're still using 1.8.</p>
<h3>Bonus Info</h3>
<p><a href="https://github.com/jimweirich/sorcerer">Sorcerer</a> is a library by Jim Weirich that can turn the s-expressions above back into Ruby code. This could be useful for changing Ruby code in a structured way. I only had limited success with it though on some simple examples. Still, worth looking into.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Bradly Feeley</strong> &middot; <time datetime="2011-08-05T23:04:00+00:00">August 5, 2011 at 11:04 pm</time></p>
      <p>Very cool. It would be great to run the output through graphviz.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2011-08-05T23:10:00+00:00">August 5, 2011 at 11:10 pm</time></p>
      <p>Ooh, that sounds like an interesting idea. That would be pretty easy to conjure up too.. If no-one tries this in the next week, I'll be giving it a go ;-)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Giles</strong> &middot; <time datetime="2011-08-07T03:58:00+00:00">August 7, 2011 at 3:58 am</time></p>
      <p>There's actually some missing history here. For 1.8, Ryan Davis had/has a small suite of similar gadgets called ParseTree, ruby_parser, and Ruby2Ruby. They had annoying indentation and syntax quirks but were basically amazing gems. A few years ago I built a method duplication detector with them. Somebody who forked it, though, ported it to run on a different Ruby AST extractor instead - can't remember the name, unfortunately.</p><p>Anyway, hoping to fiddle with Ripper soonish.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Rudkovsky</strong> &middot; <time datetime="2011-08-07T07:03:00+00:00">August 7, 2011 at 7:03 am</time></p>
      <p>Really helpful thing, thank you Peter!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Mike</strong> &middot; <time datetime="2011-08-07T13:38:00+00:00">August 7, 2011 at 1:38 pm</time></p>
      <p>Thanks for the write up. I hadn't heard of Ripper before.</p><p>Is puts {}.class all that confusing though? It seems pretty obvious that the {} in this context means it is a block.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2011-08-07T20:15:00+00:00">August 7, 2011 at 8:15 pm</time></p>
      <p>@Mike: It confused two people I consider to be smart, so I'm erring on the side of the caution here :-)</p><p>@Giles: Oh totally. Posted about ParseTree <a href="parsetree-200-released-572.html" rel="nofollow">before</a> a couple of times but I didn't go into any history here. I sorta dropped those technologies off of my radar as soon as I saw some notes about them not being supported on 1.9.</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
