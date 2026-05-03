---
title: 'Lazibi: Python-style indenting for Ruby'
date: '2007-06-16'
author: Peter Cooper
author_slug: admin
post_id: 532
slug: lazibi-python-style-indenting-for-ruby-532
url: "/lazibi-python-style-indenting-for-ruby-532.html"
categories:
- miscellaneous
- ruby-tricks
---

{{< rawhtml >}}
<p><img src="/assets/2007/06/pythonesquemigration.jpg" height="158" width="314" border="1" hspace="4" vspace="4" alt="Pythonesquemigration"></p>
<p>Last month, a lengthy discussion kicked off on Ruby-Talk called "<a href="http://blade.nagaokaut.ac.jp/cgi-bin/scat.rb/ruby/ruby-talk/252034">Why not adopt Python style indentation for Ruby?</a>" .. it wasn't anything particularly new, because <a href="http://blade.nagaokaut.ac.jp/cgi-bin/scat.rb/ruby/ruby-talk/11876">a similar discussion</a> occurred six years ago. Nevertheless, a coder called Jinjing has been inspired to create <a href="http://lazibi.rubyforge.org/">Lazibi</a>, a Ruby pre-processor to allow one to use Python style indentation within Ruby code.</p>
<p>It's clever enough, but I can't see standalone pre-processors becoming popular. It does make me think that official support for pre-processing of some sort within Ruby itself would be pretty cool though for people who want to use hacks like these.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Thomas Aylott</strong> &middot; <time datetime="2007-06-17T02:33:00+00:00">June 17, 2007 at 2:33 am</time></p>
      <p>Preprocessors? Hmm, sounds like playing a game a telephone with my code.</p><p>Anything to remove those horrible 'end' words I suppose :/</p>
    </li>
      <li>
      <p class="comment-meta"><strong>R. Henry</strong> &middot; <time datetime="2007-06-17T05:32:00+00:00">June 17, 2007 at 5:32 am</time></p>
      <p>What is the point? If I want Pythonic style indentation, I'll use Python!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>jc</strong> &middot; <time datetime="2007-06-17T06:03:00+00:00">June 17, 2007 at 6:03 am</time></p>
      <p>So horrible... oh so horrible.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>ratchetcat</strong> &middot; <time datetime="2007-06-17T10:09:00+00:00">June 17, 2007 at 10:09 am</time></p>
      <p>Er...yeah. I'm not sure why anyone would really want to bring this aspect of python into ruby.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Abdul</strong> &middot; <time datetime="2007-06-17T12:01:00+00:00">June 17, 2007 at 12:01 pm</time></p>
      <p>A better approach would be to roll the preprocessor into the editor to support  users styles.  The idea would be to present code in a user's preferred style without touching the code proper.  Of course the editor would handle the transformation both ways: code -&gt; style, and style -&gt; code for changes.</p><p>Perhaps it would end the perennial discussions about code layout styles!  Everybody uses their own.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>buller</strong> &middot; <time datetime="2007-06-17T13:29:00+00:00">June 17, 2007 at 1:29 pm</time></p>
      <p>When Bjarne Stroustrup was once asked what would be the largest mistake he made when designing and implementing C++ he answered "including preprocessor".</p><p>Do NOT go that path, ever. Not for any reason. It leads to just mess on the long run.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jay Phillips</strong> &middot; <time datetime="2007-06-17T21:06:00+00:00">June 17, 2007 at 9:06 pm</time></p>
      <p>C'mon guys. I've never seen the Ruby community be no negative about a *Ruby* extension! If you guys troll this much I think you *should* use Python!</p><p>One exciting possibility is to use this in combination with RSpec to make it even more readable to a manager who may be reviewing the specifications. If your Rakefile customized your RSpec::Runner, the pre-processing would be completely seamless.</p><p>I think Lazibi is a great move in the right direction -- not to say all code should have significant indentation but perhaps to give someone an option to use it. What's more, with Rubinius a pre-processor like this won't even be necessary.</p><p>One recommendation to Jinjing would be to remove the "do" even when the block takes arguments. "respond_to do |format|" could maybe be "respond_to : format".</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Mat Schaffer</strong> &middot; <time datetime="2007-06-18T02:37:00+00:00">June 18, 2007 at 2:37 am</time></p>
      <p>I'm with Jay on this one, pluggable pre-processors sound pretty cool.  Could lead to a whole level of meta-programming.  Meta-meta-programming even.  And it would open the doors to just about any sort of DSL.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Simon</strong> &middot; <time datetime="2007-06-18T06:41:00+00:00">June 18, 2007 at 6:41 am</time></p>
      <p>Jay: I'm sorry, but this is in all actuality just stupid.</p><p>First of all, the code for this preprocessor is incompatible with Ruby syntax, and is therefore in a different language.</p><p>Ruby has almost nothing over Python that justifies going to these lengths to bring something from Python into Ruby. JUST USE PYTHON!! Python is a great language for some, so if you are in love with indentation parsing, why not just use that?</p><p>The rest is simply unnecessarily added confusion.</p><p>If people want to preprocess their code (I can only suppose they will learn from their mistakes at some point), I'm not going to stop them. But don't ask me to read or, God forbid, maintain their code!</p><p>Oh and btw, I don't mean to be negative, it's still early. :-P</p><p>- Simon</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Sean</strong> &middot; <time datetime="2007-06-18T13:12:00+00:00">June 18, 2007 at 1:12 pm</time></p>
      <p>One of the reasons I love Ruby and hate Python is because I can't stand the indentation. I agree whole-heartedly with R. Henry. If you want to write Python-style code, use Python.</p><p>I also agree with Simon. The last thing the Ruby community needs is to have different libraries floating around out there using different variants of the language. And as much as I love it, Ruby is slow enough without pre-processing.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jay Phillips</strong> &middot; <time datetime="2007-06-19T07:24:00+00:00">June 19, 2007 at 7:24 am</time></p>
      <p>"Ruby has almost nothing over Python that justifies going to these lengths to bring something from Python into Ruby. JUST USE PYTHON!! Python is a great language for some, so if you are in love with indentation parsing, why not just use that?"</p><p>So the *one* reason you use Ruby is because it doesn't have significant indentation? Of course not. You're dead wrong -- Ruby has TONS to offer over Python and that's why it has taken off so much and why you even read this blog. I *can't* believe you actually posted that publicly, Simon. Shame.</p><p>Several other people have criticized Lazibi for potentially creating forks of the Ruby syntax. Guys, read his page. A config file can specify manually which files are pre-processed. </p><p>"The last thing the Ruby community needs is to have different libraries floating around out there using different variants of the language."</p><p>So you clearly disagree with using ActiveSupport outside of Rails or Facets outside of Nitro. We modify the Ruby language with pride everyday in the name of DSL development. How is this any different?</p><p>I find it strange no one here has mentioned HAML, another Ruby project that also uses significant indentation.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Simon</strong> &middot; <time datetime="2007-06-19T09:26:00+00:00">June 19, 2007 at 9:26 am</time></p>
      <p>Jay Phillips: No, Ruby does not have "tons" over any other relatively modern scripted language. Ruby is a wonderful language. So is Python. Each have their qualities. Blending them together will distort and disqualify each quality.</p><p>Also, Ruby has a tiny userbase compared with Python. But that is indeed irrelevant.</p><p>Rails does not modify Ruby. It uses its metaprogramming features extensively, but that is not the same as modifying the language, which is what preprocessing emulates.</p><p>Preprocessing is bad. Always. Sometimes it is necessary to achieve some things, but in those cases it is almost always a case of using the wrong tool for the job.</p><p>- Simon</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Sean</strong> &middot; <time datetime="2007-06-19T13:16:00+00:00">June 19, 2007 at 1:16 pm</time></p>
      <p>Jay Phillips: I believe you're right that Ruby has a lot more to offer than indentation, but Simon is right about other things. Rails does not modify the Ruby language. That fact that none of the core classes are frozen in Ruby means you can change the number classes so that 1+1 returns 3. It's not changing the Ruby language, it's changing one of the core classes, which is allowed as a normal feature in Ruby, and people are encouraged to use it.</p><p>I think it's awesome that you can have syntax like "7.days.ago". I've never seen any programming language let you write code that looks so intuitive. But adding "days" and "ago" methods to the number classes isn't changing the language. Changing the way the language is parsed or the way keywords are handled is changing the language, and it's a bad idea.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Brad Phelan</strong> &middot; <time datetime="2007-06-19T20:43:00+00:00">June 19, 2007 at 8:43 pm</time></p>
      <p>sniff :)  I was the first to post a Python to Ruby preprocessor in that thread. See</p><p><a href="http://xtargets.com/snippets/posts/show/68" rel="nofollow">http://xtargets.com/snippets/posts/show/68</a> </p><p>Lazibi requires that intermediate files are generated during the conversion. There is a more elegant solution which reprocesses the file in place. It is a technique that could be used for any type of preprocessing.</p><p>All you need to do is 'require' the preprocessing ruby script in your evil python indented script and you are done. As to whether this is something you should do I don't have a strong opinion but I don't think I'll be doing it myself. </p><p>--<br>
Brad Phelan<br>
<a href="http://xtargets.com" rel="nofollow">http://xtargets.com</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jay Phillips</strong> &middot; <time datetime="2007-06-19T23:16:00+00:00">June 19, 2007 at 11:16 pm</time></p>
      <p>Sean,</p><p>Take a look at some of my DSL work on Adhearsion at <a href="http://adhearsion.com" rel="nofollow">http://adhearsion.com</a>. Notice how contexts are declared with the context_name {} syntax. This is made possible by instance_eval()ing the code in two special nested container objects. It's with this special way of interpreting the code that code executes anything. The DSL interpreter is therefore inseparable from the dialplan implementer's extensions.rb file. It's "specific" to this domain.</p><p>Or take a look at Jay Fields' writing on creating BNLs. He uses pre-processors to convert English to Ruby code, then just eval()s it. Why? Because it's specific to the business domain! You guys are missing this critical point.</p><p>Something like Lazibi is a great way to make a DSL more expressive. Plain and simple. You'd never justifiably write ActionControllers with it. You'd never write big backend code with it. It's for clean, DRY frontend logic.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Simon</strong> &middot; <time datetime="2007-06-20T12:22:00+00:00">June 20, 2007 at 12:22 pm</time></p>
      <p>It could be argued that Rails does in fact pre-process Ruby code through ERb, but this is not true preprocessing, it's simply extraction (since the preprocessing does not modify the syntax of the Ruby code, but rather reads it from a specific encapsulation).</p><p>Using eval() is not modifying the language either. Though generally a very bad and ugly thing to do, it is an integral part of Ruby's feature set.</p><p>Preprocessing something with Ruby and feeding the result to eval is a fun experiment, but it's still a fundamentally bad thing to do. If you need a different language than Ruby for what you do, use a different language! Full interpreters tend to be better tested and more performant than some mutated abomination.</p><p>Writing a parser in Ruby, on the other hand, while probably unbearably slow, is entirely acceptable. Notice how this is different from mechanically translating arbitrary code into Ruby.</p><p>- Simon</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
