---
title: 'Interesting Ruby Tidbits That Don’t Need Separate Posts #5'
date: '2007-10-09'
author: Peter Cooper
author_slug: admin
post_id: 628
slug: interesting-ruby-tidbits-that-dont-need-separate-posts-5-628
url: "/interesting-ruby-tidbits-that-dont-need-separate-posts-5-628.html"
categories:
- compilations
- miscellaneous
---

{{< rawhtml >}}
<p><strong>Getting Started with Rubinius</strong><strong> </strong>Interested in what's going on with <a href="http://rubini.us/">Rubinius</a>, the new virtual machine and Ruby compiler created by Evan Phoenix? Want to install it and have a play on your own machine? Someone's put together a great blog post called "<a href="http://redartisan.com/2007/10/5/rubinius-getting-started">Getting started with Rubinius</a>" that runs through checking out Rubinius, compiling it, and digging into the code.<strong> </strong><strong>Premailer.web - Ruby app that brings all CSS styles inline</strong><a href="http://code.dunae.ca/premailer.web/">Premailer.web</a> is a Ruby script (and Web service) by Alex Dunae that can take an HTML file that uses external CSS files and turn it into an HTML file with all its styles declared inline. This is useful if you're putting together an HTML newsletter and you want all of the styles included with no requirement to load external files. Premailer.web uses <a href="http://code.whytheluckystiff.net/hpricot/">Hpricot</a> for all of the heavy lifting, and Alex said that a post about Hpricot on Ruby Inside was what inspired him to get started on this tool.<strong>Obscure and Ugly Perlisms in Ruby</strong>As an ex-Perl programmer myself, I was pretty surprised to learn <a href="http://blog.nicksieger.com/articles/2007/10/06/obscure-and-ugly-perlisms-in-ruby">about a few of these Perlisms that had made their way into Ruby</a>. Now I just have to make sure I'm not tempted to use them..<strong>"Video conversion" in Ruby on Rails</strong><a href="http://escapegoat.org/2007/8/26/video-conversion/">This</a> isn't really performing video conversion using Ruby code, but is <a href="http://escapegoat.org/2007/8/26/video-conversion/">an interesting demonstration</a> of using <a href="http://backgroundrb.rubyforge.org/">BackgrounDRb</a> to queue up video conversion tasks for <a href="http://ffmpeg.mplayerhq.hu/">FFmpeg</a> and how to show the videos back to your users.<strong>RubyShell</strong><a href="http://blog.withoutincident.com/2007/9/17/rubyshell-0-5-objects-files-interpolation-and-aliasing">RubyShell</a> (aka <em>rbsh</em>) is a project I've kept an eye on over the last few months. As the name implies, it's a UNIX "shell" (as in, like <em>bash</em>) but with a Ruby twist. It lets you access things like processes and network adapters using Ruby syntax. It's powerful stuff and I think it could become a major contender against <em>bash</em> for Ruby developers with a little more work. Smart stuff!<strong>acts_as_conference Rails Conference Call For Proposals</strong>The <a href="acts_as_conference-rails-conference-in-florida-february-2008-624.html">acts_as_conference Rails conference</a>, taking place in Orlando, FL in February 2008, has <a href="http://www.actsasconference.com/speakers">put out a call for proposals</a>. They're looking for eight speakers with an hour's session each. The topic has to include Rails in some way. Deadline for submissions is November 2nd and the schedule will be announced on November 16th.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Dan</strong> &middot; <time datetime="2007-10-10T04:19:00+00:00">October 10, 2007 at 4:19 am</time></p>
      <p>As far as video conversion goes, you might want to take a look at RVideo. The Rails Envy guys mentioned it in their podcast, and info can be found over at Rail Spikes: <a href="http://railspikes.com/2007/10/2/rvideo-0-9-is-now-available" rel="nofollow">http://railspikes.com/2007/10/2/rvideo-0-9-is-now-available</a></p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
