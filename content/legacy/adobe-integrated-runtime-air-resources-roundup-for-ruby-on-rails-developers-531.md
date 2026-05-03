---
title: Adobe Integrated Runtime (AIR) Resources Roundup for Ruby on Rails Developers
date: '2007-06-16'
author: Hendy Irawan
author_slug: hendy-irawan
post_id: 531
slug: adobe-integrated-runtime-air-resources-roundup-for-ruby-on-rails-developers-531
url: "/adobe-integrated-runtime-air-resources-roundup-for-ruby-on-rails-developers-531.html"
categories:
- cool
- miscellaneous
- news
- reference
- ruby-on-rails
- tools
---

{{< rawhtml >}}
<table width="100%" cellspacing="0" cellpadding="0" border="0">
<tr>
<td>
<a href="http://labs.adobe.com/technologies/air/">Adobe Integrated Runtime (AIR)</a>, codenamed and originally named <a href="http://labs.adobe.com/wiki/index.php/Apollo">Apollo</a>, is a cross-operating-system runtime environment for building <a title="Rich Internet Application" href="http://en.wikipedia.org/wiki/Rich_Internet_Application">Rich Internet Applications</a>, using Flash, <a title="Adobe Flex" href="http://www.adobe.com/go/flex2_devcenter">Flex</a>, HTML, Ajax, that can be deployed as a desktop application.</td>
<td> </td>
<td><img src="/assets/2007/06/air.png"></td>
</tr>
</table>
<p>AIR <a title="There's something in the AIR today..." href="http://www.riapedia.com/2007/06/11/theres_something_in_the_air_today">has gone Public Beta</a>, so does anybody use it? <a title="Project San Dimas" href="http://projectsandimas.com/">eBay does</a>, <a href="http://labs.adobe.com/showcase/air/">Adobe has more</a>, and who doesn't <a href="http://www.tweet-r.com/">love twitter?</a></p>
<p>Here are some AIR-related resources (and alternatives) that might interest you.</p>
<table width="100%" cellspacing="0" cellpadding="0" border="0">
<tr valign="top">
<td>
<strong>Related Ruby on Rails AIR Resources</strong><a href="http://www.themidnightcoders.com/weborb/rubyonrails/index.htm">WebORB for Rails</a> by <a href="http://www.themidnightcoders.com/">Midnight Coders</a> can be installed as a plugin into any Rails application to expose Ruby classes as remote services. <a href="http://blogs.adobe.com/mikepotter/">Mike Potter</a> created <a href="http://code.google.com/p/rubyonrails-ria-sdk-by-adobe/">Ruby on Rails RIA SDK</a> which makes integration much easier.</td>
<td> </td>
<td><img src="/assets/2007/06/blue_rails_mini.jpg"></td>
</tr>
</table>
<p><a href="http://www.riapedia.com/">RIA pedia</a> and Derek Wischusen's <a href="http://flexonrails.net/">FlexOnRails.net</a> have lots of useful resources on Flex and Ruby on Rails integration. Derek wrote about <a href="http://www.adobe.com/devnet/flex/articles/flex2_rails.html">Flex-Rails Integration</a> and <a href="http://blog.vixiom.com/">Alastair</a> has a good <a href="http://blog.vixiom.com/2006/08/23/flash-remoting-for-rails-tutorial/">Flash remoting for Rails tutorial</a> (although that one is a bit dated, but check out his newer Adobe+Rails articles.) If you're looking for a book, <a href="http://peterarmstrong.com/">Peter Armstrong</a> is already in the process of writing <a href="http://www.flexiblerails.com/">Flexible Rails</a>, which will have extensive coverage of developing Rails apps with both Flex and AIR.</p>
<p><a href="http://www.codeapollo.com/">CodeApollo.com</a> and <a href="http://www.onflex.org/">OnFlex.org</a> are great sources for general AIR/Flex articles and discussions.</p>
<p><strong>Aptana IDE</strong></p>
<table width="100%" cellspacing="0" cellpadding="0" border="0">
<tr valign="top">
<td>
<a href="http://www.aptana.com/">Aptana, Inc.</a> is quick to provide <a href="http://www.aptana.com/air/">AIR support for the Aptana IDE</a> (already a popular choice for developing Ruby on Rails applications with its <a href="http://www.aptana.com/download_rails_rdt.php">RadRails plugin</a>.) They also provided a very nicely done <a href="http://www.aptana.tv/movies/aptana_air/aptana_air.html">Aptana IDE + AIR screencast</a>.</td>
<td> </td>
<td><img src="/assets/2007/06/aptana_ide.gif"></td>
</tr>
</table>
<p><strong>Google Gears</strong></p>
<table width="100%" cellspacing="0" cellpadding="0" border="0">
<tr valign="top">
<td>
<a href="http://gears.google.com/">Google Gears</a> is an open source browser extension that enables web applications to provide offline functionality. It may be AIR's competitor, but Adobe's Kevin Lynch says that <a title="Google Gears Aims to Bolster Adobe Apollo, Others" href="http://www.eweek.com/article2/0,1759,2139640,00.asp">Google Gears API will also be available in AIR</a>.</td>
<td> </td>
<td><img src="/assets/2007/06/google_gears.png"></td>
</tr>
</table>
<p><a href="http://dojotoolkit.org/offline">Dojo Offline Toolkit</a> has <a href="http://codinginparadise.org/weblog/2006/04/now-in-browser-near-you-offline-access.html">offline client-side storage support</a>, which is currently being ported to use Google Gears API. <a href="http://codinginparadise.org/">Brad Neuberg</a> has created a cool-looking <a href="http://www.sitepen.com/blog/2007/02/26/screencast-of-dojo-offline-demo-release-download/">screencast of Dojo Offline</a>.</p>
<table width="100%" cellspacing="0" cellpadding="0" border="0">
<tr valign="top">
<td>
<strong>Firefox 3</strong><a href="http://developer.mozilla.org/en/docs/Firefox_3_for_developers">Firefox 3</a> will <a title="Web Apps Game changer" href="http://www.drury.net.nz/2007/02/03/firefox3-web-apps-game-changer/">support offline web applications</a> as defined by the <a href="http://www.whatwg.org/specs/web-apps/current-work/">WHATWG Web Applications 1.0 specification</a> (which has been adopted for the current HTML/XHTML 5 working draft).</td>
<td> </td>
<td><img src="/assets/2007/06/firefox.jpg"></td>
</tr>
</table>
<p><strong>Joyent Slingshot</strong></p>
<table width="100%" cellspacing="0" cellpadding="0" border="0">
<tr valign="top">
<td>
<a href="http://www.joyent.com/developers/slingshot/">Joyent Slingshot</a> has been available for some time as a "native" Ruby on Rails alternative to AIR's offline capabilities. Joyent already has a free Public Release available and will be fully open sourcing this version later this month.</td>
<td> </td>
<td><img src="/assets/2007/06/slingshot_mini.jpg"></td>
</tr>
</table>
<p><strong>Silverlight</strong></p>
<table width="100%" cellspacing="0" cellpadding="0" border="0">
<tr valign="top">
<td>
<a href="http://www.microsoft.com/silverlight/">Microsoft Silverlight</a> is a proprietary runtime for browser-based Rich Internet Applications, providing a subset of the animation, vector graphics, and video playback capabilities of <a href="http://msdn2.microsoft.com/en-us/library/ms754130.aspx">Windows Presentation Foundation</a>. As a bonus, <a href="silverlight-and-ruby-on-the-net-clr-473.html">it supports the Ruby language</a>. Given the pressure from Microsoft's competitors, it's fair to expect Silverlight to have offline capabilities in very near future.</td>
<td> </td>
<td><img src="/assets/2007/06/silverlight_mini.jpg"></td>
</tr>
</table>
<p>Feel free to post your own findings (or articles you wrote yourself) in the comments.</p>
<p><em>Note: Linux users will have to be patient a little bit more as the current AIR Beta is available for Windows and Mac only.</em></p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Thijs van der Vossen</strong> &middot; <time datetime="2007-06-16T19:36:00+00:00">June 16, 2007 at 7:36 pm</time></p>
      <p>A word of warning,;right now you can't easily talk to a RESTful Rails application from a Flex frontend running in a browser because of limitations in Flash http api. See <a href="http://www.fngtps.com/2007/06/flex-can-t-do-rest" rel="nofollow">http://www.fngtps.com/2007/06/flex-can-t-do-rest</a> for the details.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>riki</strong> &middot; <time datetime="2007-06-16T23:11:00+00:00">June 16, 2007 at 11:11 pm</time></p>
      <p>Tweeter, seems very similar Twitter. It would be easy for users to get them confused.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Massimo Sgrelli</strong> &middot; <time datetime="2007-06-17T08:51:00+00:00">June 17, 2007 at 8:51 am</time></p>
      <p>Extending browser features to get offline capability could be very dangerous. In the past years many of us worked on client server applications. They were fast and their UI was simpler to code than Web UI. But software updates and change management procedures in general were a nightmare. We browser remains the only green oasis right now. You could find many technologies and vendors supporting successfully fat and smart client platforms. At the moment people can choose, knowing that browser based apps mean working online only, and this helps keeping system architectures as simple as possible.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Rowan Hick</strong> &middot; <time datetime="2007-06-18T20:35:00+00:00">June 18, 2007 at 8:35 pm</time></p>
      <p>Just got to your blog via catching up on the Rails Podcasts.... saw this post and thought I'd mention I wrote a quick example showing how to pull out items from a SQLite database into AIR to show that offline capability. Check it out ... <a href="http://work.rowanhick.com/2007/06/12/working-air-sqlite-datagrid-example/" rel="nofollow">http://work.rowanhick.com/2007/06/12/working-air-sqlite-datagrid-example/</a></p><p>Cheers<br>
Rowan</p>
    </li>
      <li>
      <p class="comment-meta"><strong>AnnoMundi</strong> &middot; <time datetime="2007-06-22T05:20:00+00:00">June 22, 2007 at 5:20 am</time></p>
      <p>So sad, there is no Adobe AIR for Linux to download.</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
