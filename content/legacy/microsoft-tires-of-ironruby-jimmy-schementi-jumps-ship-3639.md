---
title: Microsoft Tires of IronRuby; Jimmy Schementi Jumps Ship
date: '2010-08-07'
author: Peter Cooper
author_slug: admin
post_id: 3639
slug: microsoft-tires-of-ironruby-jimmy-schementi-jumps-ship-3639
url: "/microsoft-tires-of-ironruby-jimmy-schementi-jumps-ship-3639.html"
categories:
- miscellaneous
- news
---

{{< rawhtml >}}
<p>In April, we wrote about <a href="ironruby-1-0-released-microsoft-s-3-years-with-ruby-pay-off-3212.html">IronRuby hitting 1.0</a> and Microsoft's "3 years with Ruby [paying] off." It's sad, then, to read today that program manager <a href="http://blog.jimmy.schementi.com/2010/08/start-spreading-news-future-of-jimmy.html">Jimmy Schementi is leaving Microsoft</a> citing a rapidly decreasing interest in dynamic languages (other than JavaScript) at the software giant.</p>
<blockquote class="stylized">
<p>[..] a year ago the team shrunk by half and our agility was severely limited. [..] In short, the team is now very limited to do anything new, which is why the Visual Studio support for IronPython took so long. IronRuby’s IDE support in Visual Studio hasn’t been released yet for the same reasons. [..] many other roadblocks have cropped up that made my job not enjoyable anymore.</p>
<p>Overall, I see a serious lack of commitment to IronRuby, and dynamic language[s] on .NET in general. [..] The bad-news is I will no longer be working on IronRuby full-time, but in the near future I’m definitely staying active. Also, Tomas will definitely continue working on IronRuby when he can; we weren’t the last two people left for no reason. :-)</p>
<p>Given that Tomas and I will only be working part-time on IronRuby now, I invite the Ruby and .NET communities to come help us figure out how to continue the IronRuby project, assuming that Microsoft will eventually stop funding it. I’ll start a thread on <a href="http://rubyforge.org/pipermail/ironruby-core/">the IronRuby Mailing List</a> shortly, so keep an eye on that if you’d like to help.</p>
</blockquote>
<p><cite>Jimmy Schementi</cite></p>
<p>Schementi left Microsoft at the end of July and is on his way to work at a NYC-based financial technology consulting firm. I'm sure most Rubyists would be quick to join me in congratulating Schementi and the rest of the IronRuby team (including John Lam, who <a href="http://iunknown.com/2009/11/passing-the-torch.html">left in 2009</a>) for making significant strides in a company and environment where the obstacles were piled high. We've wondered for years whether <a href="is-windows-a-first-class-platform-for-ruby-823.html">Windows is a first class platform for Ruby</a> and now we know that Ruby certainly isn't even a second class language for Microsoft.</p>
<p>Schementi seems keen for people from outside of Microsoft to get involved with IronRuby to keep it alive. These sorts of efforts aren't often successful, because contributors usually bubble up over time to become more important, and he notes that he is now the first non-MS contributor merely by virtue of no longer working for MS. If, though, you're a .Net <em>and</em> Ruby hotshot and have the time and passion to become a hero in the worlds of DLR and "Ruby on Windows", there's a significant opportunity here for the taking.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Sammy Larbi</strong> &middot; <time datetime="2010-08-07T04:23:00+00:00">August 7, 2010 at 4:23 am</time></p>
      <p>A few years ago, I staked my reputation as a Rubyist at a .NET shop on the fact that Microsoft was getting into Ruby with IronRuby. It was in the earliest of stages.</p><p>Luckily, even though (or perhaps because of the fact that) we produce enterprise software, we haven't had any performance problems running MRI on Windows. That said, it's been a total PITA from every other perspective. Not enough so that we ever abandoned MRI, but enough to where I was just waiting to see a reason to move to IronRuby and integrate it fully with the rest of our .NET infrastructure.   </p><p>The release of version 1.0 was that reason. But because we were too busy with new projects to worry about software that was some of the most stable in our suite of products, we have yet to move.</p><p>A loss like this is a shame for people like me, because little things like it are indicators to everyone else. Perhaps it's not worth moving after all?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Corey</strong> &middot; <time datetime="2010-08-07T14:33:00+00:00">August 7, 2010 at 2:33 pm</time></p>
      <p>I might add that although Ruby on Windows might be the primary use. Mono running IronRuby is equally important and is more than likely the community that would run with something like this.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>ckoy</strong> &middot; <time datetime="2010-08-07T19:38:00+00:00">August 7, 2010 at 7:38 pm</time></p>
      <p>Microsoft does not want tools &amp; languages that are strong on other OS'es to flourish on its platform, so that people developing for Windows cannot easily switch to other OS.<br>
What else were you expecting from the company who even changed path separator from / to \ ?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Bharat Ruparel</strong> &middot; <time datetime="2010-08-07T20:32:00+00:00">August 7, 2010 at 8:32 pm</time></p>
      <p>This is classic Microsoft.  This reminds me of FoxPro.  At least the IronRuby people have other Rubies to fall-back on.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Ryan Riley</strong> &middot; <time datetime="2010-08-07T23:03:00+00:00">August 7, 2010 at 11:03 pm</time></p>
      <p>This feels like a broken record; here goes:</p><p>IronRuby isn't dead. It's perhaps slowed a bit. I think the big question now is whether people care about running a Ruby that can run on the .NET runtime and use .NET classes. The Silverlight/Gestalt scenario seems an excellent reason for this; however, I've not seen real uses of that technology.</p><p>Perhaps .NET doesn't want a Ruby? Regardless, while it still kicks, I'm going to continue to push forward.</p><p>Just my 0.02.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Craig Mirkan</strong> &middot; <time datetime="2010-08-08T13:13:00+00:00">August 8, 2010 at 1:13 pm</time></p>
      <p>Perhaps Microsoft considers their experiment in "dynamic languages" (aka languages with internally inconsistent poorly specified type-systems) a failed one outside the context of supporting the web. I note that F# is still going strong.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Richard Conroy</strong> &middot; <time datetime="2010-08-08T17:28:00+00:00">August 8, 2010 at 5:28 pm</time></p>
      <p>Its probably worth a mention now that work on core/MRI Ruby on Windows (via RubyInstaller) is starting to get places now. Luis Lavena posted an update: <a href="http://blog.mmediasys.com/2010/08/07/exciting-times-for-rubyinstaller-project/#more-359" rel="nofollow">http://blog.mmediasys.com/2010/08/07/exciting-times-for-rubyinstaller-project/#more-359</a> describing some of the things on the way. </p><p>1.9.2 support, and a smoother installation of the DevKit (yay! toolchain based gem installs!). </p><p>I always felt that some of the popularity of IronRuby/JRuby was in no small part due to dissatisfaction with MRI on Windows. A lot of extensions are pure hell to get installed/working and your deployment options are awful. </p><p>Still, I hope things work out for the IronRuby/IronPython teams. .Net developers deserve something better than VB for their scripting.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>contextfree</strong> &middot; <time datetime="2010-08-10T03:46:00+00:00">August 10, 2010 at 3:46 am</time></p>
      <p>"What else were you expecting from the company who even changed path separator from / to \?"</p><p>Windows uses \ as a path separator because DOS did, and DOS did because DOS 1.0 didn't have hierarchical directories and used / for options (so it was taken). DOS 1.0 used / for options because CP/M did, and CP/M did because some DEC minicomputers did. Not everything is about Unix.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Mark Ericksen</strong> &middot; <time datetime="2010-08-14T14:23:00+00:00">August 14, 2010 at 2:23 pm</time></p>
      <p>It makes sense to me that Microsoft would drop the DLR development and the support for Ruby and Python on the .NET Framework. Why? Because Microsoft doesn't *really* want those running on their runtime because that would make the .NET Framework "just another run-time" that could be swapped out with the MRI "C" version or the Java JRuby version. They want the features of Ruby (and other dynamic languages) without the ability for applications to just jump off the platform.</p><p>In a .NET Rocks Podcast interview with Anders Hejlsberg (creator of C#), Anders talk specifically about Ruby and wanting to bring some of the meta-programing abilities to C# 5. [http://www.dotnetrocks.com/default.aspx?showNum=541]</p><p>I have a friend who works as a patent attorney and their largest client is Microsoft. He commented recently about Microsoft doing a lot of patents on DLR technology. </p><p>So I don't think it was an accident to invest 3 years of effort and then "drop interest". I think they are getting what they want out it. </p><p>Think about how Microsoft got into the Functional Programing domain. Through F#. What is F#? A syntactic copy of OCaml with "enhancements" that can't leave the .NET Runtime. Remember, Microsoft is all about lock-in. </p><p>So I expect Microsoft got what they wanted. The technology developed in-house and patented. They can use that technology to help develop C# 5.0 or a new dynamic language inspired on Ruby and/or Python but with enough changes that it can't be taken off the .NET Framework.</p><p>Embrace, Extend, Extinguish.</p><p>Have they ever really done otherwise?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Charles Roper</strong> &middot; <time datetime="2010-08-18T08:50:00+00:00">August 18, 2010 at 8:50 am</time></p>
      <p>I'd like to echo Richard Conroy's comment and say that the Windows msys-based MRI's are being developed at pace and with passion by the RubyInstaller team to great effect. The DevKit solves a ton of the old problems regarding compiled extensions and Ruby is now so much more pleasant and performant on Windows than it was just a couple of years ago. So the future is bright for Ruby on Windows if the RubyInstaller team can keep their pace up.</p><p>Regarding Microsoft turning its back on IronRuby, well, remember about 10 years ago when they stopped developing IE at version 6. Look where that got them. They thought they had won the browser war, but instead it was their downfall. They've been struggling to catch up ever since and in the mean time provided fertile grounds for Web Standards to flourish. Good thing too.</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
