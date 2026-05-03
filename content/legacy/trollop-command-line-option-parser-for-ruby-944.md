---
title: 'Trollop: Simple Yet Powerful Command Line Option Processor'
date: '2008-07-07'
author: Peter Cooper
author_slug: admin
post_id: 944
slug: trollop-command-line-option-parser-for-ruby-944
url: "/trollop-command-line-option-parser-for-ruby-944.html"
categories:
- miscellaneous
- ruby-tricks
---

{{< rawhtml >}}
<p><a href="http://trollop.rubyforge.org/">Trollop</a> is a command-line argument processing library for Ruby. Developer William Morgan says Trollop is "designed to provide the maximal amount of GNU-style argument processing in the minimum number of lines of code." It makes a refreshing change to the more popular, but generally scary, <a href="http://cmdparse.rubyforge.org/">cmdparse</a>. The homepage features some <a href="http://trollop.rubyforge.org/">examples</a> of its usage.</p>
<p>Once you've installed trollop with the usual <em>gem install trollop</em>, you could write:</p>
<pre><span class="ident">require</span> <span class="punct">'</span><span class="string">trollop</span><span class="punct">'</span>

<span class="ident">opts</span> <span class="punct">=</span> <span class="constant">Trollop</span><span class="punct">::</span><span class="ident">options</span> <span class="keyword">do</span>
  <span class="ident">opt</span> <span class="symbol">:http_1_0</span><span class="punct">,</span> <span class="punct">"</span><span class="string">Force HTTP/1.0</span><span class="punct">"</span>
  <span class="ident">opt</span> <span class="symbol">:http_1_1</span><span class="punct">,</span> <span class="punct">"</span><span class="string">Force HTTP/1.1</span><span class="punct">"</span>
  <span class="ident">opt</span> <span class="symbol">:hide_referer</span><span class="punct">,</span> <span class="punct">"</span><span class="string">Hide referer</span><span class="punct">",</span> <span class="symbol">:default</span> <span class="punct">=&gt;</span> <span class="constant">true</span>
  <span class="ident">opt</span> <span class="symbol">:connections</span><span class="punct">,</span> <span class="punct">"</span><span class="string">Set number of simultaneous connections</span><span class="punct">",</span> <span class="symbol">:default</span> <span class="punct">=&gt;</span> <span class="number">2</span>
<span class="keyword">end</span>

<span class="ident">p</span> <span class="ident">opts</span></pre>
<p>Running the script with no command line options would result in <em>opt</em> becoming:</p>
<pre><span class="punct">{</span><span class="symbol">:http_1_0=</span><span class="punct">&gt;</span><span class="constant">false</span><span class="punct">,</span> <span class="symbol">:http_1_1=</span><span class="punct">&gt;</span><span class="constant">false</span><span class="punct">,</span> <span class="symbol">:hide_referer=</span><span class="punct">&gt;</span><span class="constant">true</span><span class="punct">,</span> <span class="symbol">:connections=</span><span class="punct">&gt;</span><span class="number">2</span><span class="punct">,</span> <span class="symbol">:help=</span><span class="punct">&gt;</span><span class="constant">false</span><span class="punct">}</span></pre>
<p>You also get a --help (or -h) option for free that describes how to use the options:</p>
<pre>Options:
         --http-1-0, -h:   Force HTTP/1.0
         --http-1-1, -t:   Force HTTP/1.1
     --hide-referer, -i:   Hide referer (default: true)
  --connections, -c <i>:   Set number of simultaneous connections (default: 2)
             --help, -e:   Show this message</i></pre>
<p>Note that trollop takes care of assigning the short-hand individual letter options, assigning the next letter within the string if the previous ones are taken.</p>
<p>Another option is <a href="http://optiflag.rubyforge.org/">Optiflag</a>, which present a more DSL-esque solution. Its official homepage features some <a href="http://optiflag.rubyforge.org/showMeTheLaughter.html">compelling examples</a>, though the simplicity of Trollop appeals to me more for some reason.</p>
<p><em><strong>Post supported by Brightbox:</strong></em> <a href="http://www.brightbox.co.uk/"><em>Brightbox</em></a> <em>is a specialist European</em> <a href="http://www.brightbox.co.uk/"><em>Rails hosting</em></a> <em>company. Each Brightbox server includes an optimised Ruby on Rails stack, SAN storage and access to a managed MySQL database cluster. They also manage dedicated clusters for large scale Rails deployments.</em> <a href="http://www.brightbox.co.uk/"><em>Click here to learn more...</em></a></p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Eric Anderson</strong> &middot; <time datetime="2008-07-07T19:31:00+00:00">July 7, 2008 at 7:31 pm</time></p>
      <p>I've never used cmdparse (looks scary) but I have use getoptlong that is included in the stdlib for Ruby. Less scary looking then cmdparse it is still more of a pain then it needs to be.</p><p>Trollop seems exactly like what I think command-line argument processing should look like. Optiflag is nice also but I love the simplicity of Trollop. I feel like it basically turning ARGV into a hash. How much simpler can you get. Add the more advanced options (defaults, sub-options, etc) and you have everything you might need.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Leon Bogaert</strong> &middot; <time datetime="2008-07-07T21:25:00+00:00">July 7, 2008 at 9:25 pm</time></p>
      <p>Thanks! I'm always looking for some way to make commandline option parsing more easy :)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Daniel Berger</strong> &middot; <time datetime="2008-07-07T21:40:00+00:00">July 7, 2008 at 9:40 pm</time></p>
      <p>If all you want is ARGV in a hash then use getopt-std or getopt-long (from the getopt library).</p><p>gem install getopt</p>
    </li>
      <li>
      <p class="comment-meta"><strong>topfunky</strong> &middot; <time datetime="2008-07-08T00:10:00+00:00">July 8, 2008 at 12:10 am</time></p>
      <p>I think that Yehuda Katz was also working on such a library called Thor:</p><p><a href="http://github.com/wycats/thor/tree/master" rel="nofollow">http://github.com/wycats/thor/tree/master</a></p><p>It RubyConf, Gregory Brown lamented to Matz that we have 3 or 4 option parsers in the standard library. Yet people still want something better!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Chris Lloyd</strong> &middot; <time datetime="2008-07-08T00:49:00+00:00">July 8, 2008 at 12:49 am</time></p>
      <p>IMHO, Thor is awesome as it maps all your command line options directly to your methods. It handles all the delegation of the options and also allows different methods to require different sets of options. It also (rudimentarily) supports option typing.</p><p>It's more of a command-line framework than just an options parser, but I think its even easier to use than Trollop et al. and potentially very powerful.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Alex Vollmer</strong> &middot; <time datetime="2008-07-08T15:56:00+00:00">July 8, 2008 at 3:56 pm</time></p>
      <p>There is another super-simple library much like Trollop I've put together called Clip. The goal is to get away from the details of command-line parsing as quickly as you can. Check it out at <a href="https://github.com/alexvollmer/clip/tree" rel="nofollow">https://github.com/alexvollmer/clip/tree</a>.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Thomas Leitner</strong> &middot; <time datetime="2008-07-09T08:36:00+00:00">July 9, 2008 at 8:36 am</time></p>
      <p>Since I'm the author of cmdparse, I don't think that cmdparse is that scary :) And also, cmdparse itself isn't an option parsing library like trollop, it is just a wrapper around option parsing libraries.</p><p>All it does is that it adds support for specifying sub commands (or sub sub commands, ...). For example, you can have such command lines:</p><p>webgen -V 0 create -t project -s default new_site</p><p>where create is a sub command taking the -t and -s options.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2008-07-09T13:21:00+00:00">July 9, 2008 at 1:21 pm</time></p>
      <p>Thomas: I certainly don't mean any offense to your library, and it is clearly not scary to everyone since I have seen it used perhaps more than all the other libraries put together.</p><p>Perhaps there is room to put together an article covering the pros and cons of all of these various libraries in future so that developers can choose the one that matches with their expectations. For example, the sub command support you highlight could be important to one developer, whereas the "DSL approach" could be important to others. Thanks for highlighting that, as it might encourage others to check out your library if that's what they need!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Thomas Leitner</strong> &middot; <time datetime="2008-07-09T14:48:00+00:00">July 9, 2008 at 2:48 pm</time></p>
      <p>No offense taken, I just wanted to clarify the purpose of cmdparse :) If I implemented cmdparse now I would probably take another approach - I have reimplemented another one of my projects 5 times already, always with a complete change of the core functionality.</p><p>An overview of all command line parsing libraries would be cool since there are so many now.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>remi</strong> &middot; <time datetime="2008-07-11T21:41:00+00:00">July 11, 2008 at 9:41 pm</time></p>
      <p>I've got a tiny library that I always use which takes a different approach.</p><p>Instead of focusing on all of the option parsing, I focus on a RubyGems-like CLI interface, giving you a way to quickly make command-line interfaces that act like `yourapp dosomething [args]` ... command listing and usage/help documentation is built in, but that's ALL.  I leave you to your own devices for actually parsing options that're passed to commands (I'm perfectly happy using optparse).</p><p>SimpleCLI: <a href="http://github.com/remi/simplecli" rel="nofollow">http://github.com/remi/simplecli</a></p><p>It's pretty ridiculously simple - but it works great for me.  It takes me about 60 seconds to get me up and running with a command line interface that's got useful help documentation and can list all of your commands and howto use them, etc etc.</p><p>Here's an example of how I commonly use it (in conjunction with optparse): <a href="http://github.com/remi/syntax-on/tree/master/lib/syntax-on/bin.rb" rel="nofollow">http://github.com/remi/syntax-on/tree/master/lib/syntax-on/bin.rb</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jim</strong> &middot; <time datetime="2008-07-21T13:40:00+00:00">July 21, 2008 at 1:40 pm</time></p>
      <p>Sounds interesting.... i've been using Choice which i've found to be pretty good. Will have to have a look at Trollop (if anything cos i like the name :P )</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
