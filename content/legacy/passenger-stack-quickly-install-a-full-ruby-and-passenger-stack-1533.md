---
title: 'Passenger-Stack: Quickly Install a full Ruby and Passenger Stack'
date: '2009-02-21'
author: Peter Cooper
author_slug: admin
post_id: 1533
slug: passenger-stack-quickly-install-a-full-ruby-and-passenger-stack-1533
url: "/passenger-stack-quickly-install-a-full-ruby-and-passenger-stack-1533.html"
categories:
- ruby-on-rails
- tools
---

{{< rawhtml >}}
<p><img style="float:left; margin-right:12px; margin-bottom:12px; border:1px #000000 solid;" src="/assets/2009/02/stack.png" alt="stack.png" width="98" height="100"></p>
<p><a href="http://benschwarz.github.com/passenger-stack/">Passenger-Stack</a> is a set of scripts for the provisioning tool <a href="http://github.com/crafterm/sprinkle">Sprinkle</a> that make installing a full Ruby, Apache and Passenger-based stack <em>almost</em> a one-line task. It'll take almost any UNIX-y (correction: Ubuntu / Debian) server of your choice from a generic install through to deploying Rack-based apps (including those built with Rails, Merb, Sinatra, and Ramaze).</p>
<p>The Sprinkle scripts behind Passenger-Stack were developed by Ben Schwarz and the best introduction is his <a href="http://www.vimeo.com/2888665">five minute screencast showing how it works</a> (on Ubuntu 8.10 hosted with Slicehost). Ben is very keen for people to fork <a href="http://github.com/benschwarz/passenger-stack/tree/master">the scripts on Github</a> and customize them further.</p>
<p>If you're not familiar with <a href="http://github.com/crafterm/sprinkle/tree/master">Sprinkle</a>, by the way, it's a "software provisioning tool" that you can use to perform installs and remote builds with. In essence, it allows you to write installation scripts using a Ruby-based DSL.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Marten Veldthuis</strong> &middot; <time datetime="2009-02-22T08:53:00+00:00">February 22, 2009 at 8:53 am</time></p>
      <p>"It'll take almost any UNIX-y server of your choice"</p><p>Almost any, as long as it's ubuntu, you mean?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2009-02-22T14:10:00+00:00">February 22, 2009 at 2:10 pm</time></p>
      <p>Or Debian. Good point though - corrected. Looks like it'd be trivial to replace apt with yum to cover the Fedora / RedHat / CentOS base.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Ed Spencer</strong> &middot; <time datetime="2009-02-23T12:22:00+00:00">February 23, 2009 at 12:22 pm</time></p>
      <p>Very nice, looks like it will save me the time and pain associated with doing this time after time.  Thanks Ben.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Ahabman</strong> &middot; <time datetime="2009-02-23T13:38:00+00:00">February 23, 2009 at 1:38 pm</time></p>
      <p>Anyone know how this compares to the latest deprec gem?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Hubert Łępicki</strong> &middot; <time datetime="2009-02-24T08:08:00+00:00">February 24, 2009 at 8:08 am</time></p>
      <p>This is definitely cool. I have been interested in CouchDB for some time now, it's amazing tool. Good to have some convenient API working in Ruby :).</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Hubert Łępicki</strong> &middot; <time datetime="2009-02-24T08:16:00+00:00">February 24, 2009 at 8:16 am</time></p>
      <p>Ok, pff. Wrong tab, had 2 stories from RubyInside opened!</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
