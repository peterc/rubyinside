---
title: 'Rails Ready: Ruby and Rails on Ubuntu in One Line'
date: '2011-01-21'
author: Peter Cooper
author_slug: admin
post_id: 4214
slug: rails-ready-ruby-and-rails-on-ubuntu-in-one-line-4214
url: "/rails-ready-ruby-and-rails-on-ubuntu-in-one-line-4214.html"
categories:
- linux-specific
- tools
---

{{< rawhtml >}}
<blockquote class="stylized">
<p>How would you like to get a full Ruby on Rails stack up on Ubuntu with one command?</p>
<p>Now you can by running <a href="https://github.com/joshfng/railsready">Rails Ready.</a> Rails Ready is a setup script that gets Ruby and Rails running on a fresh install of Ubuntu with one command (Tested on Ubuntu server 10.04 LTS (Long-term Support)).</p>
</blockquote>
<p><cite>Adam Stacoviak</cite></p>
<p><a href="https://github.com/joshfng/railsready">Rails Ready</a> is essentially just a shell script but one you might find useful if you're running Ubuntu (or - update - CentOS) and want to get the installation process done and over as quickly as possible. It follows on rather nicely to our last post: <a href="rails-installer-ruby-and-rails-on-windows-in-a-single-install-4201.html">Ruby Installer: Ruby and Rails on Windows in a Single, Easy Install</a>!</p>
<p>If you have the time or you're installing this on your main development machine, however, I would recommend following <a href="http://ryanbigg.com/2010/12/ubuntu-ruby-rvm-rails-and-you">Ryan Biggs' RVM based instructions</a> (or <a href="how-to-install-ruby-1-9-2-and-rails-3-0-on-ubuntu-10-10-4148.html">my equivalent screencast</a>) because RVM gives you more developer-level control later on (such as <a href="http://rvm.beginrescueend.com/gemsets/">gem sets</a>). <em><strong>UPDATE -</strong> Josh has been working hard and says that Rails Ready "now asks you if you want to build from source or install RVM" - nice!</em></p>
<p>Nonetheless, if you want to get a new Ubuntu (or CentOS) box running Rails as quickly as possible, Rails Ready is worth a try. The short version:</p>
<pre><code>wget --no-check-certificate https://github.com/joshfng/railsready/raw/master/railsready.sh &amp;&amp; bash railsready.sh</code></pre>
<p>Before running the above, though, be aware of the ramifications. You should probably take a look at <code>https://github.com/joshfng/railsready/raw/master/railsready.sh</code> yourself to see if it's suitable for you.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Josh Frye</strong> &middot; <time datetime="2011-01-22T01:44:00+00:00">January 22, 2011 at 1:44 am</time></p>
      <p>I have updated the script. It now asks you if you want to build from source or install RVM :)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2011-01-22T02:22:00+00:00">January 22, 2011 at 2:22 am</time></p>
      <p>I've updated the post - thanks!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Tom</strong> &middot; <time datetime="2011-01-22T18:10:00+00:00">January 22, 2011 at 6:10 pm</time></p>
      <p>I would love this for CentOS/RH!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Josh Frye</strong> &middot; <time datetime="2011-01-24T13:32:00+00:00">January 24, 2011 at 1:32 pm</time></p>
      <p>Care to do one more update? Had some contributions from the community and the "one liner" is much smaller now :)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2011-01-24T22:08:00+00:00">January 24, 2011 at 10:08 pm</time></p>
      <p>I'm a bit rushed off my feet ATM to check it out again but if you can sum it up in a comment, I'll try and tweak it in.. :)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Josh Frye</strong> &middot; <time datetime="2011-01-26T18:14:00+00:00">January 26, 2011 at 6:14 pm</time></p>
      <p>Install with `wget --no-check-certificate <a href="https://github.com/joshfng/railsready/raw/master/railsready.sh" rel="nofollow">https://github.com/joshfng/railsready/raw/master/railsready.sh</a> &amp;&amp; bash railsready.sh`</p><p>Now supports Ubuntu 10.04 and CentOS 5.5 with more on the way. Implements distro detection and pulls down the correct "recipe" from the github repo to build your system.</p><p>Thanks for the mention on the Ruby Show!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>(unknown)</strong> &middot; <time></time></p>
      <p>Pingback: <a href="http://babinho.net/2010/09/installing-rails-3-in-ubuntu-10-04/" rel="external nofollow" class="url">Installing Rails 3 in Ubuntu 10.04 | babinho's weblog</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>jtucker</strong> &middot; <time datetime="2011-03-10T00:39:00+00:00">March 10, 2011 at 12:39 am</time></p>
      <p>Curious line in the script at line #20:<br>
  railsready_path=$(cd &amp;&amp; pwd)/railsready</p><p>I didn't try on my machine but what gets me is the cd part first.  I have my cd aliased to perform an ls after cd.  I would guess that this behavior might break this script.  Is the cd even necessary? I am very eager to try the script next time I need to perform an install!  Thanks!</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
