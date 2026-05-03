---
title: How to create a UNIX /etc/init.d startup script with Ruby
date: '2006-09-25'
author: Peter Cooper
author_slug: admin
post_id: 250
slug: how-to-create-a-unix-etcinitd-startup-script-with-ruby-250
url: "/how-to-create-a-unix-etcinitd-startup-script-with-ruby-250.html"
categories:
- cool
- miscellaneous
- ruby-tricks
- tutorials
---

{{< rawhtml >}}
<p>Most <em>init.d</em> start-up scripts seem to be <em>bash</em> scripts, but you can write them with any language. Here's some template code I use to create my own Linux services. You can even add them to chkconfig to be started properly on startup, and they'll also work with RedHat / CentOS's <em>service</em> system straight off.</p>
<p><em>(Update: January 2007, John Dewey warns me that this will not work on Solaris as it forces scripts to be run using /sbin/sh .. I guess a way around it would be to have a script in the middle that then calls Ruby, but it's your call :))</em></p>
<pre><span class="comment">#!/usr/bin/env ruby</span></pre>
<pre><span class="comment">#</span></pre>
<pre><span class="comment"># app_name      This is a startup script for use in /etc/init.d</span> <span class="comment"></span></pre>
<pre><span class="comment">#</span> <span class="comment"></span></pre>
<pre><span class="comment"># chkconfig:    2345 80 20</span> <span class="comment"></span></pre>
<pre><span class="comment"># description:  Description of program / service</span>  <span class="constant"></span></pre>
<pre><span class="constant">APP_NAME</span> <span class="punct">=</span> <span class="punct">'</span><span class="string">app_name</span><span class="punct">'</span>  <span class="keyword"></span></pre>
<pre><span class="keyword">case</span> <span class="constant">ARGV</span><span class="punct">.</span><span class="ident">first</span>     <span class="keyword"></span></pre>
<pre><span class="keyword">when</span> <span class="punct">'</span><span class="string">status</span><span class="punct">':</span>     	   <span class="ident"></span></pre>
<pre><span class="ident">status</span> <span class="punct">=</span> <span class="punct">'</span><span class="string">stopped</span><span class="punct">'</span>         <span class="ident"></span></pre>
<pre></pre>
<pre><span class="ident">puts</span> <span class="punct">"</span><span class="expr">#{APP_NAME}</span> is <span class="expr">#{status}</span><span class="punct">"</span></pre>
<pre><span class="keyword">when</span> <span class="punct">'</span><span class="string">start</span><span class="punct">':</span> 		<span class="comment"># Do your thang</span></pre>
<pre><span class="keyword">when</span> <span class="punct">'</span><span class="string">stop</span><span class="punct">':</span> 		<span class="comment"># Do your thang</span></pre>
<pre><span class="keyword">when</span> <span class="punct">'</span><span class="string">restart</span><span class="punct">':</span> 		<span class="comment"># Do your thang		</span></pre>
<pre><span class="comment"></span> <span class="keyword">end</span>  <span class="keyword">unless</span> <span class="punct">%w{</span><span class="string">start stop restart status</span><span class="punct">}.</span><span class="ident">include?</span> <span class="constant">ARGV</span><span class="punct">.</span><span class="ident">first</span></pre>
<pre><span class="ident">puts</span> <span class="punct">"</span><span class="string">Usage: </span><span class="expr">#{APP_NAME}</span> {start|stop|restart}<span class="punct">"</span></pre>
<pre><span class="ident">exit</span> <span class="keyword"></span></pre>
<pre><span class="keyword">end</span></pre>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Jon Maddox</strong> &middot; <time datetime="2006-09-25T17:35:00+00:00">September 25, 2006 at 5:35 pm</time></p>
      <p>Excellent! I was just about to delve into doing this to autostart multiple sites using mongrel_cluster, on boot.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2006-09-25T18:23:00+00:00">September 25, 2006 at 6:23 pm</time></p>
      <p>Tim Morgan has put a basic mongrel_rails one together if you want some reference. See <a href="http://bigbold.com/snippets/posts/show/2594" rel="nofollow">http://bigbold.com/snippets/posts/show/2594</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Benjamin Curtis</strong> &middot; <time datetime="2006-09-25T18:32:00+00:00">September 25, 2006 at 6:32 pm</time></p>
      <p>Just in case you missed it, mongrel_cluster comes with an init.d script to start multiple rails app on boot.  It's resources/mongrel_cluster in the gem distribution.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jon Maddox</strong> &middot; <time datetime="2006-09-25T18:55:00+00:00">September 25, 2006 at 6:55 pm</time></p>
      <p>hmm, will it autodetect my apps? My reasoning for writing a ruby script was that i was going to parse my /home/dev/apps directory with all the sites in it and iterate over each directory grabbing the mongrel conf from each and starting them..</p><p>Am i reinventing the wheel?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2006-09-25T19:51:00+00:00">September 25, 2006 at 7:51 pm</time></p>
      <p>I can't remember exactly what I did, but I got the regular one to work like that, Jon. However, it didn't 'autodetect' as such.. you have to copy the mongrel config file from your Rails app into a special folder.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jon Maddox</strong> &middot; <time datetime="2006-09-25T20:58:00+00:00">September 25, 2006 at 8:58 pm</time></p>
      <p>Yeah, thats the part I dont really want to do. I'd like to take one step out. I think i'll play with this tonight and see what I come up with.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2006-09-25T21:07:00+00:00">September 25, 2006 at 9:07 pm</time></p>
      <p>Actually, I think I symbolically link the mongrel configs.. so you could probably automate /that/ with some additions to the init.d file. On 'start' just do a clever 'find' for mongrel configs (under a certain directory pattern, with wildcards), symbolic link them.. and then start the clusters.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>(unknown)</strong> &middot; <time></time></p>
      <p>Pingback: <a href="http://rubyfilter.com/story/83/" rel="external nofollow" class="url">Anonymous</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>zimbatm</strong> &middot; <time datetime="2006-09-26T06:12:00+00:00">September 26, 2006 at 6:12 am</time></p>
      <p>The daemons library can also be useful for such tasks</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jon Maddox</strong> &middot; <time datetime="2006-09-27T02:06:00+00:00">September 27, 2006 at 2:06 am</time></p>
      <p>As a follow up, I went ahead and hacked up that script tonight, you can check it out here: </p><p><a href="http://www.simplisticcomplexity.com/2006/9/26/start-and-stop-all-your-mongrel_cluster-processes" rel="nofollow">http://www.simplisticcomplexity.com/2006/9/26/start-and-stop-all-your-mongrel_cluster-processes</a></p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
