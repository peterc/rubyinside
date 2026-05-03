---
title: 21 Rack Middlewares To Turbocharge Your Ruby Webapps
date: '2009-10-14'
author: Peter Cooper
author_slug: admin
post_id: 2649
slug: 21-rack-middlewares-2649
url: "/21-rack-middlewares-2649.html"
categories:
- compilations
- elsewhere
- ruby-on-rails
---

{{< rawhtml >}}
<p><img src="/assets/2009/10/rack-logo.png" width="132" height="68" alt="rack-logo.png" style="float:left; margin-right:12px; margin-bottom:12px;">If you've worked with Web apps using Ruby, you might know of <a href="http://rack.rubyforge.org/">Rack</a>, an interface that sits between Ruby applications and HTTP-speaking Web servers. All of the major Ruby frameworks and server setups use it now, including Rails. Middleware (in Rack) is code that manipulates data going back and forth between your Ruby apps and the HTTP server. You can use middleware to intercept requests, change data in mid-flow, etc. Ryan Bates has a great <a href="http://railscasts.com/episodes/151-rack-middleware">screencast tutorial</a> if you're new to the concept and want to build your own.</p>
<p><em>P.S. I know the term "middlewares" sounds borderline insane, but.. it works, you know what it means - yada, yada ;-)</em></p>
<p>In this post, we're going to highlight various Rack middlewares from CodeRack, an on-going Rack middleware competition:</p>
<div style="margin-left: 1.2em">
<p><a href="http://coderack.org/users/qoobaa/entries/34-karma-chameleon">Karma Chameleon</a> - Focused at Rails developers, Karma Chameleon makes it easy to automatically have file extensions added to all of your app's links and URLs. The humorous motivation for this is so that you can have all your pages use ".aspx" or ".php" extensions to look better in corporate environments. Joking aside, though, this is a cute, well written middleware that's worth looking at.</p>
<p><a href="http://coderack.org/users/jtrupiano/entries/37-rackrewrite" rel="nofollow">Rack::Rewrite</a> - This middleware is a clever attempt at implementing some of Apache's mod_rewrite functionality in Rack. So far it has support for doing basic rewrites (where URLs are changed mid-request before they hit the backend) and HTTP 301 and 302 redirects.</p>
<p><a href="http://coderack.org/users/tylerhunt/entries/6-canonical-host" rel="nofollow">Canonical Host</a> - This middleware lets you specify a "canonical hostname" for your application so that any requests to other hostnames are redirected to the same URL on the canonical hostname.</p>
<p><a href="http://coderack.org/users/webficient/entries/38-racktidy" rel="nofollow">Rack::Tidy</a> - Rack::Tidy cleans up HTML markup by automatically indenting and reformatting content. If you want the output from your Web apps to look clean (especially if you used ERb!), this is worth a try, although it expects valid markup in order to perform its cleaning..</p>
<p><a href="http://coderack.org/users/MetaSkills/entries/15-zombie-shotgun" rel="nofollow">Zombie Shotgun</a> - The Zombie Shotgun provides protection against Microsoft Windows zombie attacks! It rejects requests from known "evil" user agents and to known nefarious URL paths. I dare say this is a useful middleware to throw in front of almost anything.</p>
<p><a href="http://coderack.org/users/Rasputnik/entries/32-imagesizer" rel="nofollow">ImageSizer</a> - This middleware adds an HTTP header to the HTTP response when serving images that provides the image's dimensions. It works with both static and dynamically generated images as it get used after your code has provided the image.</p>
<p><a href="http://coderack.org/users/Simon/entries/39-firebug-logger" rel="nofollow">Firebug Logger</a> - Adds logging to your Rack-powered app for use in the <a href="http://getfirebug.com/">Firebug</a> Firefox extension or Webkit/Safari's Inspector.</p>
<p><a href="http://coderack.org/users/Postmodern/entries/27-enforcessl" rel="nofollow">EnforceSSL</a> - EnforceSSL lets you ensure that certain paths are only reached securely over HTTP/SSL. If a path denoted as sensitive is requested over regular HTTP, an HTTP 307 redirect will be issued (as an aside, I didn't know about <a href="http://en.wikipedia.org/wiki/List_of_HTTP_status_codes#3xx_Redirection">HTTP 307</a> till now - it's worth reading about).</p>
<p><a href="http://coderack.org/users/freels/entries/24-inlineuploader" rel="nofollow">InlineUploader</a> - This middleware sells itself! <i>"Need inline uploads for files like the way GMail handles email attachements? InlineUploader makes it easy! InlineUploader provides a generic file upload endpoint and a way to attach uploaded files to subsequently submitted form data."</i></p>
<p><a href="http://coderack.org/users/Postmodern/entries/25-referercontrol" rel="nofollow">RefererControl</a> - A middleware that restricts access to certain paths based on the <code>Referer</code> header. Rather than blocking people who have no referrer, however, this middleware is intended to <i>enforce</i> certain referrers so that users follow the intended flow of a site.</p>
<p><a href="http://coderack.org/users/sam/entries/21-rackgoogleanalytics" rel="nofollow">Rack::GoogleAnalytics</a> - Rack::GoogleAnalytics automatically adds the Google Analytics tracking code into the HTML pages of your applications. A very simple middleware with code to match (so it's worth looking at if you want to try writing a basic middleware of your own), though I'm not sure whether this sort of thing should be in middleware to start with..</p>
<p><a href="http://coderack.org/users/julioody/entries/20-racknoie" rel="nofollow">Rack::NoIE</a> - This middleware is self described as "the coolest Rack middleware ever created." I'm not so sure about that but it <i>does</i> redirect Internet Explorer 6 users away from your Web site. Supposedly the CodeRack site itself uses this middleware!</p>
<p><a href="http://coderack.org/users/Postmodern/entries/26-banhammer" rel="nofollow">BanHammer</a> - A very simple middleware app that restricts access to specified IPv4/v6 addresses and ranges.</p>
<p><a href="http://coderack.org/users/wbzyl/entries/19-rackcodehighlighter">Rack::Codehighlighter</a> - This middleware automatically applies a code highlighter (of your choice out of CodeRay, Syntax, and Ultraviolet) to any source code embedded within <code>PRE</code> tags in your HTML pages. This could be particularly handy if you're using a Ruby blogging tool that doesn't provide this feature.</p>
<p><a href="http://coderack.org/users/jbr/entries/14-response-time-injector" rel="nofollow">Response Time Injector</a> - Want the full app response time in the body of your served HTML someplace? This middleware substitutes any reference to "$responsetime" in your response body with the amount of time the response took. Could be handy for debugging. It even lets you specify a format to show the time in.</p>
<p><a href="http://coderack.org/users/drnic/entries/17-probably-versioned" rel="nofollow">Probably Versioned</a> - A middleware by <a href="http://drnicwilliams.com/">Dr Nic Williams</a>! Probably Versioned provides the ability to add a version reference into the URLs/routes for your application without affecting your app.. e.g. <code>www.example.com/v1/some/path.json</code> - As Nic explains, however, this is a precautionary tactic to ensure your users use future-proof URLs rather than a permanent fix as you're on your own when version 2 comes along ;-)</p>
<p><a href="http://coderack.org/users/cwninja/entries/18-rackproxy" rel="nofollow">Rack::Proxy</a> - Provides proxying abilities. For example, you could pass remote API calls through your own app/URL scheme. This is one of the middlewares that could probably go on to be a bigger deal with some serious extensions.</p>
<p><a href="http://coderack.org/users/laktek/entries/11-server-proxy" rel="nofollow">Server Proxy</a> - From the name, Server Proxy sounds similar to Rack::Proxy, but Server Proxy is specifically for bypassing cross-domain access restrictions (from AJAX, say). It provides a simple way to proxy requests to remote APIs through your existing site, e.g. <code>http://localhost:3000/server_proxy?service_url=twitter.com&amp;service_path=statuses/public_timeline.xml</code> - you'd need to beware of the security issues with this though!</p>
<p><a href="http://coderack.org/users/Gaius/entries/7-casrack-the-authenticator" rel="nofollow">Casrack the Authentication</a> - A middleware that provides <a href="http://www.jasig.org/cas">CAS</a> (Central Authentication Service) support. CAS is a centralized authentication system initially developed by Yale. I'm not aware of CAS but it looks like a well put together middleware to solve a specific problem. Note: You'll need to be up to speed with <a href="http://gemcutter.org/">Gemcutter</a> to install it as a gem but <a href="http://github.com/gcnovus/casrack_the_authenticator">the code is on GitHub too</a>.</p>
<p><a href="http://coderack.org/users/luigi/entries/4-rackchromeframe" rel="nofollow">Rack::ChromeFrame</a> - Recently Google <a href="http://code.google.com/chrome/chromeframe/">released a plugin</a> for Internet Explorer that provides its own Chrome browser's functionality within existing IE windows. This middleware makes the pages served demand the use of Google Chrome Frame on supported browsers.</p>
<p><a href="http://coderack.org/users/maciej/entries/2-rakismet-akismet-client" rel="nofollow">Rakismet</a> - Rakismet can pipe the comments your site received through the Akismet comment spam checker. There's no documentation here yet, but the code provides a nice example of interacting with Akismet that could be useful even if you don't use the middleware.</p>
</div>
<p style="background-color:#ffd;padding:8px;font-family:verdana;font-size:12px"><a href="http://mobileorchard.com/training?inside" rel="nofollow"><img src="/assets/2009/06/rupho.png" width="74" height="40" alt="rupho.png" style="float:left; margin-right:12px;"></a><em>[ad]</em> <strong>Mobile Orchard's <a href="http://mobileorchard.com/training?inside" rel="nofollow">from Rubyist to iPhone programmer in 2 days class</a></strong> is coming to Portland/OR Nov 12-13 and Los Angeles/CA Nov 19-20. <del>$1200</del> $799 with early reg and "inside" discount code.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Gaius</strong> &middot; <time datetime="2009-10-14T20:30:00+00:00">October 14, 2009 at 8:30 pm</time></p>
      <p>I forgot to mention that the "Casrack the Authenticator" gem is on Gemcutter, not Rubyforge, so for the gem install, you'll need "[sudo] gem install casrack_the_authenticator --source <a href="http://gemcutter.org" rel="nofollow">http://gemcutter.org</a>" unless you've already done the gem tumble (see <a href="http://gemcutter.org" rel="nofollow">http://gemcutter.org</a>).</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2009-10-14T22:07:00+00:00">October 14, 2009 at 10:07 pm</time></p>
      <p>I wondered if it was Gemcutter. I wrote the post on a machine I hadn't yet installed it on so did so but still couldn't get it to work. I must have done something wrong. I'll update the post :) Thanks!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jason Seifer</strong> &middot; <time datetime="2009-10-15T03:35:00+00:00">October 15, 2009 at 3:35 am</time></p>
      <p>TURBOPUNS</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Ralph</strong> &middot; <time datetime="2009-10-21T20:27:00+00:00">October 21, 2009 at 8:27 pm</time></p>
      <p>Thanks for your website. lets connect on Problogger Community</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Web Developer UK</strong> &middot; <time datetime="2009-11-02T16:21:00+00:00">November 2, 2009 at 4:21 pm</time></p>
      <p>I want to see the intergratability  for  enterprise level applications<br>
Preferabaly adopters to j2ee stack or .net stack</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
