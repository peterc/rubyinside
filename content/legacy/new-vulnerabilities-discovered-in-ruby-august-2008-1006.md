---
title: New Vulnerabilities Discovered in Ruby (August 2008)
date: '2008-08-08'
author: Peter Cooper
author_slug: admin
post_id: 1006
slug: new-vulnerabilities-discovered-in-ruby-august-2008-1006
url: "/new-vulnerabilities-discovered-in-ruby-august-2008-1006.html"
categories:
- news
---

{{< rawhtml >}}
<p><img src="/assets/2008/06/dontpanic.jpg" width="255" height="261" alt="dontpanic.jpg" style="border:1px #000000 solid;"><br>
<em>Photo by <a href="http://www.flickr.com/photos/brighton/2153602543/">JL2003</a> - CC 2.0 Attribution License</em></p>
<p>In June, a serious <a href="june-2008-ruby-security-vulnerabilities-927.html">security advisory was put out</a> about the official (MRI) Ruby interpreter for all versions prior to 1.8.5, 1.8.6 prior to patch 231, 1.8.7 prior to patch 22, and 1.9.0 prior to 1.9.0-2. Now (August 8, 2008) <a href="http://www.ruby-lang.org/en/news/2008/08/08/multiple-vulnerabilities-in-ruby/">a new set of vulnerabilities have been discovered</a> and announced. They affect all 1.8.5 releases, 1.8.6 patch 285 and prior, 1.8.7 patch 70 and prior, and Ruby 1.9 r18423 and prior. This almost certainly means an upgrade is required for most users as all but very recent versions are affected.</p>
<p>The vulnerabilities discovered this time around aren't, on the surface, quite as serious as those last time around. Several vulnerabilities in safe level have been discovered (essentially there are some clever ways of getting around a few safe level restrictions), WEBrick's default file handler has a bug that results in certain operations taking exponential time, <em>resolv.rb</em> is open to the recently popularized DNS spoofing tactics, and <em>dl</em> doesn't check whether variables used in calling functions are tainted or not. These issues are all covered on <a href="http://www.ruby-lang.org/en/news/2008/08/08/multiple-vulnerabilities-in-ruby/">the official Ruby news page about the vulnerabilities</a>, along with some advice on how to upgrade.</p>
<p>Upgrading to the latest stable version is always a good idea (assuming you check if your apps will still work - Rails had/has problems with certain 1.8.6/1.8.7 versions) but if you're sure you (and your libraries!) are not using any of the features mentioned above, this set of vulnerabilities doesn't present any reason to panic, unless you're heavily reliant on safe mode or allow tainted variables to even reach something as powerful as <em>dl</em>.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Senthil Nayagam</strong> &middot; <time datetime="2008-08-09T04:32:00+00:00">August 9, 2008 at 4:32 am</time></p>
      <p>This time we are better prepared, we had hardly forgotten the last experience, including compiling on windows(with msys).</p><p>Another couple of incidents of this sort will scaring the customers, this will be bad for the community</p><p>I strongly believe all code including core libraries need to have unit tests.  I am willing to offer one developer full time to write tests, review memory leaks and performance issues, if MRI moves to github.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Robin Kaarsgaard</strong> &middot; <time datetime="2008-08-09T11:43:00+00:00">August 9, 2008 at 11:43 am</time></p>
      <p>Quite an offer, that! :)</p><p>However, while I do agree that security issues like these are bad for business, and that all code should have unit tests to help prevent this sort of thing, the question is if it's really worth putting all that much energy into MRI at this time, seeing as YARV and Rubinius are gaining maturity by the minute, and many of the memory and performance issues of MRI have been addressed by Ruby Enterprise Edition. Perhaps your resources are better spent supporting one of these projects?</p><p>Speaking of Ruby Enterprise Edition - will we see a backport of these security fixes in the near future?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2008-08-09T13:04:00+00:00">August 9, 2008 at 1:04 pm</time></p>
      <p>I think this could be the ideal time for the Phusion guys to set out what they want to ultimately achieve with REE and perhaps attempt to get a lot more people involved and turn it into the de-facto MRI replacement (rather than as a mere side option). Okay, it'd effectively be forking MRI, but perhaps MRI needs to be forked?</p><p>I know the Phusion guys read Ruby Inside, so they might want to comment, but I'd certainly be interested in supporting an effort to encourage MRI over to Github and to have better tests. Whether this is achieved on MRI-proper or REE is a matter of argument. The proactiveness of the REE guys encourages me to support them more, but this might also be because they're English-speakers and the Japanese-led development of MRI feels a little alien to me.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>RTG</strong> &middot; <time datetime="2008-08-09T17:43:00+00:00">August 9, 2008 at 5:43 pm</time></p>
      <p>+1 for Phusion guys to be officially included into ruby CDT, otherwise all this will screw up the rails biz sooner as we expect. We switched with our servers to phusion after the first advisory.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Nikolay Kolev</strong> &middot; <time datetime="2008-08-09T22:33:00+00:00">August 9, 2008 at 10:33 pm</time></p>
      <p>I like what Phusion does and use both Passenger and REE, but I really hate their branding choices - Phusion looks hackerish with the "ph", REE mimics Java EE and for good or bad the Java style is "considered harmful" in the Ruby land, and last, but not least... Passenger, modpassenger, modrails, modrack... why not stick with one single name and remove the references to the rest even from their website as it's confusing?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Hongli Lai</strong> &middot; <time datetime="2008-08-10T09:54:00+00:00">August 10, 2008 at 9:54 am</time></p>
      <p>Thanks for the encouraging words, people.</p><p>We're already aware of these security vulnerabilities, and we've already been busy preparing a new Ruby Enterprise Edition release because of this. Previous Ruby releases had crash bugs and compatibility problems, so we're testing the latest release to ensure that there are no crashers or incompatibilities.</p><p>Yesterday we had tested Ruby 1.8.6-p286 against the Rails test suite and the RubySpec test suite. The results are very promising: all tests pass. In fact, Ruby 1.8.6-p286 passes more RubySpec tests (read: all of them) than 1.8.6-p114 (the version that the current Ruby Enterprise Edition release is based on). We'll do some final QA testing today before releasing a new Ruby Enterprise Edition version.</p><p>@Nikolay: I'm sorry if you're confused by the branding. Phusion Passenger is just Phusion Passenger: the name "mod_rails" is only for marketing purposes because everybody who reads it will immediately know what it is. On the other hand, Phusion Passenger isn't "mod_rails" anymore because it also supports Rack and WSGI now. Rack support was planned from the beginning, which is why we had constantly been calling it "Phusion Passenger (mod_rails)" ("mod_rails" between brackets): the message that we want to give to the outside world is that "Phusion Passenger" is the name, while "mod_rails" is its primary function. We advice you to use the name Phusion Passenger from now on. Thank you.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Nikolay Kolev</strong> &middot; <time datetime="2008-08-10T17:50:00+00:00">August 10, 2008 at 5:50 pm</time></p>
      <p>@Hongli Lai: I'm not personally confused by the branding; I think it's confusing to the mass audience. No comment on Ruby Enterprise Edition? :-) "Enterprisey" is a bad bad word in the Rails!</p><p>Anyway, I'm looking forward to the new REE release and I hope everybody switches to it soon making MRI less significant as their recent fiascos are unhealthy for Rails and Ruby in general.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Sean</strong> &middot; <time datetime="2008-08-10T19:39:00+00:00">August 10, 2008 at 7:39 pm</time></p>
      <p>"Enterprisey" might be a bad word in Rails, but it's accepted with Ruby.  My parent company (in Japan) has one of the top Ruby people (don't know if I can say) consult on a frequent basis on how to make Ruby more acceptable in the enterprise (I'm guessing this is where some of the talk of ISO standardization is coming from).</p><p>Not that you're saying this, Nikolay.  :)  I just wanted to clarify.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Hongli Lai</strong> &middot; <time datetime="2008-08-10T21:40:00+00:00">August 10, 2008 at 9:40 pm</time></p>
      <p>A new Ruby Enterprise Edition version based on 1.8.6-p286 has been released: <a href="http://tinyurl.com/6x36ad" rel="nofollow">http://tinyurl.com/6x36ad</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Senthil Nayagam</strong> &middot; <time datetime="2008-08-11T00:54:00+00:00">August 11, 2008 at 12:54 am</time></p>
      <p>@Nikolay: history may not be the judge of future to come, enterprise is not a bad word or  bad market to be in. I am evangelising ruby in enterprise and answering their concerns. We have a long way to go before we see mass adoption.</p><p>@Hongli Lai: thanks , it was re-assuring.<br>
I had heard good things about passenger and ruby enterprise, ease of install, memory optimizations from my team members and ruby friends.</p><p>the way I percieve ruby enterprise is a MRI ruby fork which gets the enhancements, which would get back into MRI </p><p>Are you planning public access to your SCM for ruby enterprise edition, that is one benchmark I have for "participatory" open source, and thats why I was never on Java platform.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Nikolay Kolev</strong> &middot; <time datetime="2008-08-11T04:35:00+00:00">August 11, 2008 at 4:35 am</time></p>
      <p>@Senthil: I'm talking about buzzwords, not the meaning behind them. Enterprise grade, industrial strength, bulletproof, 24x7, etc. are buzzwords from the previous cycles. I personally like the buzz-neutral Phusion Ruby much better than REE, but I might be totally wrong as the Fortune 100/500 folks might be requiring their double E's. :-)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Hongli Lai</strong> &middot; <time datetime="2008-08-11T08:22:00+00:00">August 11, 2008 at 8:22 am</time></p>
      <p>@Senthil: The code is on Github so one doesn't really need to have write access to our repository. That said, if anyone wants write access and have a good reason, then please contact me and we'll work something out.</p><p>It's our long-term goal to get the changes integrated back into upstream Ruby. In the short term we're considering integrating useful patches, such as the Bleakhouse's patches and some patch which allows one to print the backtraces of all threads.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>cgpandey</strong> &middot; <time datetime="2008-08-28T08:32:00+00:00">August 28, 2008 at 8:32 am</time></p>
      <p>Thank you so much for notifying us with the vulnerabilities of ruby. It is somewhat amazing because i was thinking that this new version of ruby had not any vulnerability</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
