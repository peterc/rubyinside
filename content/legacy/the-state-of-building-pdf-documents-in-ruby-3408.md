---
title: The State of Building PDF Documents in Ruby
date: '2010-06-16'
author: Peter Cooper
author_slug: admin
post_id: 3408
slug: the-state-of-building-pdf-documents-in-ruby-3408
url: "/the-state-of-building-pdf-documents-in-ruby-3408.html"
categories:
- miscellaneous
---

{{< rawhtml >}}
<blockquote class="stylized"><p>If you've ever generated PDFs in Ruby before, you know that it can be both tedious and difficult using the standard go-to PDF libraries out there. Let's face it, we're web developers. Coming from HTML+CSS-based layouts, writing Ruby code for that stuff is a major pain.</p></blockquote>
<p><cite>Jared Pace</cite></p>
<p>In <a href="http://thinkrelevance.com/blog/2010/06/15/rethinking-pdf-creation-in-ruby.html">Rethinking PDF Creation in Ruby</a>, Jared takes a playful swipe at Gregory Brown's much loved <a href="http://github.com/sandal/prawn">Prawn</a> PDF generation library. He expresses a preference for converting HTML and CSS documents to PDF, rather than using the more PDF-level conventions Prawn adopts. To do this, he and some colleagues built <a href="http://github.com/jdpace/PDFKit">PDFKit</a>, a Ruby HTML-to-PDF library powered by <a href="http://code.google.com/p/wkhtmltopdf/">wkhtmltopdf.</a></p>
<p>Given the "Prawn is a bit meh" tone of Jared's article, though, Gregory Brown <a href="http://twitter.com/seacreature/status/16257740610">is not impressed</a> and points out that Prawn gives you stronger and more precise under-the-hood control, useful particularly for building complex forms, tables and doing point-perfect positioning of on-page elements. Nonetheless, if a HTML driven approach feels better to you and would give "good enough" results, PDFKit is worth a try and the results look OK. I think there's room for more than one approach, depending on what you want to achieve.</p>
<p>In rebutting PDFKit, Greg suggests <a href="http://rghost.rubyforge.org/">RGhost - Ruby GhostScript</a> as another Ruby PDF generator alternative. RGhost is more similar to Prawn than PDFKit, but has some interesting features, such as being able to easily render documents into formats other than PDF (such as PostScript, PNG, TIFF, and JPEG).</p>
<p><em>Update: Some readers note that PDFKit seems rather similar to <a href="http://github.com/mileszs/wicked_pdf">wicked_pdf</a>, a similar library that has been around for about a year now.</em></p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Brandon Martinez</strong> &middot; <time datetime="2010-06-16T20:46:00+00:00">June 16, 2010 at 8:46 pm</time></p>
      <p>I've been working on creating a PDF creation library using iText and Radius (for a markup). I just generate an XML file and then do the rest of the work there. This project is what I have so far:</p><p><a href="http://github.com/brandonmartinez/spree-variable-data-products" rel="nofollow">http://github.com/brandonmartinez/spree-variable-data-products</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Lakshan</strong> &middot; <time datetime="2010-06-16T20:56:00+00:00">June 16, 2010 at 8:56 pm</time></p>
      <p>Isn't PDFKit more or less similar to WickedPDF (<a href="http://github.com/mileszs/wicked_pdf" rel="nofollow">http://github.com/mileszs/wicked_pdf</a>), which is also based on wkhtmltopdf? I've been using it in apps since last year and wonder what the big deal with PDFKit?</p><p>However, it's still a PITA to generate PDFs for email attachments (within ActionMailer) with WickedPDF or Prawn. So only if someone can nail that issue...</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2010-06-16T21:03:00+00:00">June 16, 2010 at 9:03 pm</time></p>
      <p>Lakshan: PDFKit seems to do "inline" PDF generation.. could you use that data in ActionMailer? (At least, in Rails 3.0's easier to use ActionMailer that handles attachments better..)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Stephen Gerstacker</strong> &middot; <time datetime="2010-06-16T21:13:00+00:00">June 16, 2010 at 9:13 pm</time></p>
      <p>I've been using RJB and iText for a while now.  It works great, but it doesn't play well with Phusion Passenger.</p><p>I use iText because I have pre-made forms with fields that I "stamp".</p><p>I'm stuck with Mongrel + Apache for now.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Gregory Brown</strong> &middot; <time datetime="2010-06-16T21:20:00+00:00">June 16, 2010 at 9:20 pm</time></p>
      <p>Hi Peter,</p><p>Thanks for covering this.  To be clear, it isn't at all that I'm not impressed with PDFKit, or the idea of html2pdf in general.  I think that if all of the following conditions apply, you definitely should check out a Webkit or FlyingSaucer based renderer that does HTML to PDF:</p><p>1. You already need to write HTML+CSS, and are pretty good at it<br>
2. You don't have too much dynamic content<br>
3. You don't need any fine grained control over measurement calculations.  In Prawn, you have all the tools necessary to know obscenely obscure things, like the dimensions and boundaries of arbitrary characters.<br>
4. You don't need hack anything about your renderer (or you know how to code Java/ObjC/C/C++ or whatever the underlying html2pdf engine you're running is)<br>
5. You don't mind interfacing with binary executables<br>
6. Either when you load up the browser and hit "Print" it looks good, or you know how to do print in CSS.<br>
7. You don't need super fine grained control over document flow.</p><p>Although the above seem very restrictive, I think that maybe half or more of all Rails apps that want PDF aren't affected by these issues.  If you control your own deployment environment and have one page reports you need to crank out and a designer on staff, you could get huge headway with html2pdf translation and if Prawn seems like more trouble than it's worth, it's just the wrong tool to be using.</p><p>One thing I'm curious about though, is that even when you throw out flow issues, whether Webkit is mature enough at this point to make quick work of vector drawings.</p><p>I'd love to see a PDFkit (or wicked_pdf) example that is able to do something like this, for example:</p><p><a href="http://majesticseacreature.com/prawn-sample.pdf" rel="nofollow">http://majesticseacreature.com/prawn-sample.pdf</a></p><p>I built it in an hour or so on a plane ride, and the code looks like this:<br>
<a href="http://gist.github.com/441285" rel="nofollow">http://gist.github.com/441285</a></p><p>I don't think the code itself is that beautiful, but I think it's badass that we have these features.  If one could do something equally well or better in HTML/CSS, it'd be a real eye opener for me.</p><p>Anyway, we're generating a lot of heat and not enough light with this discussion, and I want to turn that around.  The example above is a start, but I want to collect more and more use cases (from both sides), in which we can say "Use an html2pdf converter here" or "Use Prawn", so that we can help those who are new to the problem space figure out the right tool for their needs.  Once things cool down a bit, I hope Jared will help me with that.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Rodrigo Rosenfeld Rosas</strong> &middot; <time datetime="2010-06-16T21:28:00+00:00">June 16, 2010 at 9:28 pm</time></p>
      <p>I've written about another approach for generating PDF with ODF templates on Rails Magazine #4:</p><p><a href="http://rosenfeld.heroku.com/en/articles/ruby-rails/2010-03-16-generating-pdf-with-odf-templates-in-rails" rel="nofollow">http://rosenfeld.heroku.com/en/articles/ruby-rails/2010-03-16-generating-pdf-with-odf-templates-in-rails</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Rodrigo Rosenfeld Rosas</strong> &middot; <time datetime="2010-06-16T21:31:00+00:00">June 16, 2010 at 9:31 pm</time></p>
      <p>Well, it seems there is a strange bug in my site. Please access first:</p><p><a href="http://rosenfeld.heroku.com/en/articles/ruby-rails/" rel="nofollow">http://rosenfeld.heroku.com/en/articles/ruby-rails/</a></p><p>Then click on the link</p><p>I'll take a look what is happening there...</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Scott Thompson</strong> &middot; <time datetime="2010-06-16T21:43:00+00:00">June 16, 2010 at 9:43 pm</time></p>
      <p>From our For What It's Worth department…</p><p>If you're working in the specialized environment of Mac OS Ruby development, both rubycocoa and MacRuby give you access to the Quartz 2D apis that are part of Mac OS X.  Quartz 2D can easily generate PDF.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Gregory Brown</strong> &middot; <time datetime="2010-06-16T21:47:00+00:00">June 16, 2010 at 9:47 pm</time></p>
      <p>@Lakshan:  Unless you're using Prawnto (which we don't recommend), sending an attachment with Prawn is as easy as rendering to file or just calling render and grabbing the string.</p><p>See our Rails guide at:<br>
<a href="http://wiki.github.com/sandal/prawn/using-prawn-in-rails" rel="nofollow">http://wiki.github.com/sandal/prawn/using-prawn-in-rails</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>jonty</strong> &middot; <time datetime="2010-06-16T22:09:00+00:00">June 16, 2010 at 10:09 pm</time></p>
      <p>Prawn is an awesome gem that already produces great pdfs. Printing from ruby has always been difficult; prawn allows the control that is needed to print from ruby. Rough and ready libs just will not cut it! For example try printing a musical score with ruby - yeah its not easy is it! But with prawn and a few minutes work I already have staves, noteheads and bar lines. Given the time and I will be able to generate  musical scores. What about publishing from ruby? I reckon Prawn will allow the level of control necessary to be able to do this from ruby - look at what scribus can do - imagine being able to write that with ruby!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Joel Meador</strong> &middot; <time datetime="2010-06-16T22:47:00+00:00">June 16, 2010 at 10:47 pm</time></p>
      <p>If you're in an environment where you can't access the OS (like Heroku) to configure these things or afford a Prince license, there's a SaaS PDF generation tool with an API.  It uses Prince under the covers for the PDF side of things.</p><p><a href="http://docraptor.com/" rel="nofollow">http://docraptor.com/</a></p><p>Disclaimer: I helped build the product.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Ng Tze Yang</strong> &middot; <time datetime="2010-06-17T06:38:00+00:00">June 17, 2010 at 6:38 am</time></p>
      <p>I've a project <a href="http://github.com/ngty/clamsy" rel="nofollow">http://github.com/ngty/clamsy</a> that uses odt as a template for pdf generation. Feel free to give it a try &amp; let me know how i can improve it :]</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jared Pace</strong> &middot; <time datetime="2010-06-18T01:40:00+00:00">June 18, 2010 at 1:40 am</time></p>
      <p>@Gregory - I wrote up a PDFKit version of the PDF you linked too. The biggest problem I ran across is there seems to be a bug in wkhtmltopdf which is forcing a second page. Its interesting none the less especially since I'm using Javascript to generate the flower.</p><p>PDF: <a href="http://bit.ly/bfSS8A" rel="nofollow">http://bit.ly/bfSS8A</a><br>
Source: <a href="http://bit.ly/bw4FLm" rel="nofollow">http://bit.ly/bw4FLm</a></p><p>I also plan on doing a more detailed blog post about PDFKit usage (not focusing on differences between Prawn). I think people just want to know what it can do - not necessarily how its different than Prawn. Then people can decide to use whichever library clicks with them the most.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2010-06-18T01:46:00+00:00">June 18, 2010 at 1:46 am</time></p>
      <p>@Jared: That is rather impressive! I've asked Greg to come back here and check it out. The only real flaw I can find is that the text "PDFKit" appears to be rather aliased/rendered poorly. In Greg's, it's regular outlined vector text. Yet.. the Raphael stuff appears to be vectorized still. I wonder if there's a way to improve on this?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Gregory Brown</strong> &middot; <time datetime="2010-06-18T02:03:00+00:00">June 18, 2010 at 2:03 am</time></p>
      <p>@Jared:  You're right about comparisions.  It's actually more of a problem for us in which people come to Prawn looking for html2pdf and not finding it.  Those who go to PDFKit might already have a sense of what they are looking for.</p><p>Generally, I am impressed with the example.</p><p>== The Upside:</p><p>It makes sense in the web dev context, specifically when working with designers/developers who are truly squarely in the web dev space and aren't comfortable with general programming.  Working with an outsourced team or a team that's large enough to have people who are solely using the web stack (HTML/CSS/Javascript), this could be a major cost savings.</p><p>Also... I totally overlooked the fact that wkhtml2pdf could take advantage of the rich Javascript landscape.  That is a serious win, and something I'd advertise like crazy if I were the one maintaining PDFkit.</p><p>== The Downsides:</p><p>Your example uses Javascript, Ruby, CSS, and HTML.  It generates SVG, and it depends on a binary blob that can't be hacked without learning yet another language.</p><p>Prawn uses pure Ruby with no dependencies.  No intermediate formats are used, it spits out PDF.</p><p>Your wkhtml2pdf bug (which looks like a deal breaker) requires a fix from someone who knows QT (if it's a wkhtml2pdf), or possibly raw C++ if it's a webkit bug.  Given the choice between finding and fixing a bug there, and finding and fixing it in Prawn, I think you're going to have better luck with Prawn.</p><p>== General Thoughts:</p><p>We both made some mistakes in the representations of our projects that possibly unfairly cast aspersions on the other.  From this point on, I'm going to try to focus on the productive side of things.  Helping users figure out whether Prawn is a good fit for their needs vs. an html2pdf generator is hard, so I'll write some documentation of when it's a good idea to use one or the other.</p><p>If you write docs showing what PDFKit can do, I'll keep an eye on them, and recommend it to our users when their needs seem to be served better by it.</p><p>They say that all these flareups on the web last two days and die down.  It's been two days now, so let's turn this into something good.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Gregory Brown</strong> &middot; <time datetime="2010-06-18T02:14:00+00:00">June 18, 2010 at 2:14 am</time></p>
      <p>@Peter: About the fonts, they appear to be rasterized.  True PDF font rendering will always be raw vector drawings, allowing arbitrary scaling (which is what Prawn does).  Weird though, I'd imagine that there should be some way around that since it's not like Safari will blur fonts at high scaling...</p><p>But if this really is a problem of wkhtml2pdf, it'll burn a lot of people who need to generate super high resolution stuff like posters.  It'd be interesting to know what's going on there.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2010-06-18T02:42:00+00:00">June 18, 2010 at 2:42 am</time></p>
      <p>I agree. Even though "high enough" resolution rasterization would be OK visually (mostly), then you have crazy file sizes to contend with. The Raphael stuff seems to be vectored okay so perhaps Cufon rendered text would too. The technology stack gets one turtle taller!</p><p>In separate testing with wkhtml2pdf directly, regular text renders OK. It just seems to be the H1 tag on that document that is being rasterized. I wonder if that's because the opacity is set? Maybe wkhtml2pdf doesn't support doing opacity the PostScript way and just renders to get around it. If so, I doubt that would be a big issue to most users.</p><p>All this said, this whole imbroglio has opened my eyes to PrinceXML somewhat. It's more advanced than I thought and I'm actually considering getting a local license for rendering my still-nascent Redis book (since I'm working in HTML anyway).</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2010-06-18T02:43:00+00:00">June 18, 2010 at 2:43 am</time></p>
      <p><em>In separate testing with wkhtml2pdf directly, regular text renders OK.</em></p><p>And, to clarify, fonts are being embedded OK too.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Gregory Brown</strong> &middot; <time datetime="2010-06-18T03:16:00+00:00">June 18, 2010 at 3:16 am</time></p>
      <p>@Peter Cooper:</p><p>Regarding Prince, you should check out what one of Prawn's core devs had to say:<br>
<a href="http://groups.google.com/group/prawn-ruby/msg/ccb50f8986d2f91b" rel="nofollow">http://groups.google.com/group/prawn-ruby/msg/ccb50f8986d2f91b</a></p><p>We generally give it its due: It's a great product for what it does.  And interestingly enough, Daniel weighs out the cost and points out cases where it's probably worth it.  I am less kind to absurdly high commercial pricing, but he makes a compelling point.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2010-06-18T07:54:00+00:00">June 18, 2010 at 7:54 am</time></p>
      <p>Good post - thanks. However, it makes reference to the $3800 server license which is, I agree, pretty absurd. For running out stuff from a local machine, though, as in the case of making some books, the regular professional license would suffice (though still not particularly cheap..) That would rule out doing DRM or similar "on the fly" customization online, but we all know DRM's evil anyway, right? :-)</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
