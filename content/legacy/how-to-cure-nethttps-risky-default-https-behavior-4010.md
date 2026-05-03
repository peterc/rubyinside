---
title: How to Cure Net::HTTP’s Risky Default HTTPS Behavior
date: '2010-12-09'
author: Peter Cooper
author_slug: admin
post_id: 4010
slug: how-to-cure-nethttps-risky-default-https-behavior-4010
url: "/how-to-cure-nethttps-risky-default-https-behavior-4010.html"
categories:
- controversy
- miscellaneous
---

{{< rawhtml >}}
<p><a href="http://jamesgolick.com/">James Golick</a>, a prolific Canadian Rubyist, has declared war on Net:HTTP's default of <i>not</i> checking the validity of the certificate sent by an HTTP server when making HTTPS requests. His new <a href="https://github.com/jamesgolick/always_verify_ssl_certificates">always_verify_ssl_certificates gem</a> <i>forces</i> Net::HTTP to verify SSL certificates and doesn't allow other libraries to override this setting.</p>
<p>Despite being <a href="http://notetoself.vrensk.com/2008/09/verified-https-in-ruby/">a known issue for years</a>, James explains why Net::HTTP's default setting could be leaving you open to security problems:</p>
<blockquote class="stylized">
<p>During the <a href="http://en.wikipedia.org/wiki/Transport_Layer_Security#TLS_handshake_in_detail">TLS (SSL) handshake</a>, the server sends its <a href="http://en.wikipedia.org/wiki/Digital_certificate">certificate</a> to the client. The certificate is generally signed by a trusted third party (like Go Daddy or Verisign). If the server’s certificate is not verified, you have no basis for trusting anything else about the connection.</p>
<p>When surfing the web, sometimes your browser might give you a warning about an invalid TLS certificate. When an HTTP client receives a server certificate during the TLS handshake, it typically makes sure that it is 1) signed by a trusted certificate authority and 2) that the information on the certificate is valid (i.e. not expired) matches the request (i.e. the domain on the certificate matches the one the request is being made to). If one of those criteria is not met, the browser displays a warning to the user, advising them not to proceed.</p>
<p>Certificate verification is essential to TLS. Without it, any attacker on your network, on the server network, or in the path between can successfully spoof any website (your bank, your credit card processor, etc) in a <a href="http://en.wikipedia.org/wiki/Man-in-the-middle_attack">man-in-the-middle attack</a> and capture your credentials.</p>
<p>By default, Ruby’s net/http library tells OpenSSL not to verify TLS certificates. That means that your Ruby app’s communication with Amazon Web Services, your credit card processor, and any other HTTPS services you might use can be vulnerable to this kind of attack. In an era of shared hosting environments, it’s not hard to imagine the path to a successful attack via this vector.</p>
<p>The good news is that the <a href="https://github.com/jamesgolick/always_verify_ssl_certificates">always_verify_ssl_certificates gem</a> monkey patches net/http to always verify TLS certificates. You’ll need to point it to the root CA certificates for your platform (some paths are listed in the <a href="https://github.com/jamesgolick/always_verify_ssl_certificates">README</a> or you can download a file below).</p>
<p>I've found that virtually all Ruby libraries will attempt to set their HTTPS connections to VERIFY_NONE mode (<code>open_uri</code> is a common exception - it gets things right!). With most of the gems I’ve looked at, setting the HTTPS connections to VERIFY_PEER where certificates actually get verified isn’t even an option. For that reason, my gem makes it impossible to set VERIFY_NONE mode. This is something we need to change as a community. It’s a real and significant vulnerability.</p>
</blockquote>
<p><cite>James Golick</cite></p>
<p>While there's a potential for man-in-the-middle attacks when using Net::HTTP to connect to HTTPS sites, the chances are low, and if you're not doing anything that needs to be airtight (say, local development work), you might not need to use James' solution (or if you're using <code>open_uri</code>). For your production billing / payment details server talking to a payment processor over HTTPs though, it's essential to make sure you're checking those certificates, even if they're self signed.</p>
<h3>The How</h3>
<p>To get going, you need a local CA certificates bundle, the official <em>curl</em> site maintains an up to date <a href="http://curl.haxx.se/ca/cacert.pem">cacert.pem / ca-bundle.crt file</a> containing all of the major certificates if you need one.</p>
<p>Next, after a <code>gem install always_verify_ssl_certificates</code>, you can be up and running with a test as simply as:</p>
<pre><code>require 'always_verify_ssl_certificates'
AlwaysVerifySSLCertificates.ca_file = "/path/path/path/cacert.pem"

http= Net::HTTP.new('https://some.ssl.site', 443)
http.use_ssl = true
req = Net::HTTP::Get.new('/')
response = http.request(req)</code></pre>
<p>If the site has a bad certificate an error will be raised at this point. If not, a legitimate HTTP response object will be returned.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>James Golick</strong> &middot; <time datetime="2010-12-09T08:28:00+00:00">December 9, 2010 at 8:28 am</time></p>
      <p>Thanks for posting this, Peter. I actually just shipped a version of the library that doesn't need any configuration. Just require and go.</p><p>The other thing I wanted to say is that I find the comment you made about the low probability of an mitm attack very disappointing. The chances of any attack are relatively low, but the consequences are extremely high. As a community, we need to take this more seriously, and having community leaders downplay the importance of a glaring vulnerability doesn't help.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2010-12-09T08:38:00+00:00">December 9, 2010 at 8:38 am</time></p>
      <p>It's important but as you say.. the "chances of any attack are relatively low" so it's accurate to say the "chances are low" as I did. I'm not going to lie and say the chances of getting hit by this are high and you need to panic in every situation ;-)</p><p>I'm not downplaying it - I said "it's essential to make sure you're checking those certificates" (in a situation where it clearly is), said this issue "could be leaving you open to security problems", and included some basic instructions so people will feel more compelled to get on board. I wouldn't have spent time on the post if I didn't think it was something worth people knowing about!</p><p>With that, back to regular programming..</p>
    </li>
      <li>
      <p class="comment-meta"><strong>James Golick</strong> &middot; <time datetime="2010-12-09T08:41:00+00:00">December 9, 2010 at 8:41 am</time></p>
      <p>Also, there's something unsettling about this: <a href="https://skitch.com/jamesgolick/rrn75/net-http-cheat-sheet" rel="nofollow">https://skitch.com/jamesgolick/rrn75/net-http-cheat-sheet</a> :-P</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2010-12-09T08:48:00+00:00">December 9, 2010 at 8:48 am</time></p>
      <p>Ah, cut me some slack! That's an old post with code not even written by me ;-) I've added a nice bold note to it with the issues raised in this post and linked back to here.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Carl</strong> &middot; <time datetime="2010-12-09T14:35:00+00:00">December 9, 2010 at 2:35 pm</time></p>
      <p>How do we handle self signed certs in this situation? Once we verify they are correct using out-of-band communication, how do we add them as valid?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Mark Carey</strong> &middot; <time datetime="2010-12-09T14:36:00+00:00">December 9, 2010 at 2:36 pm</time></p>
      <p>This is also a handy site for working with certificates:<br>
<a href="http://gagravarr.org/writing/openssl-certs/others.shtml" rel="nofollow">http://gagravarr.org/writing/openssl-certs/others.shtml</a></p><p>If you install a certificate or CA certificate into openssl then any tool or lib that depends on openssl will trust that certificate or certificates signed by the CA.  </p><p>This also affects tools like curl or wget who no longer have to be told to ignore the certificate when checking sites with self signed certificates (when the self signed cert is added to openssl's cert store).</p><p>A huge component of SSL is trust.  Rather than saying you don't care about trust and opening yourself up to mitm attacks, just explicitly trust the certs you know to be valid.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Rick Wargo</strong> &middot; <time datetime="2010-12-09T15:05:00+00:00">December 9, 2010 at 3:05 pm</time></p>
      <p>Eventually we are going to have to bite the bullet and all of us responsibly deal with certificate verification. As open hotspots are widely available and often used, man-in-the-middle attacks could become more common. There are already solutions for blended attacks to implement SSL proxies, not to mention the ones already established in some corporate environments.</p><p>There will be a number of headaches as we take this on, but it will be far less than if we wait. Thanks for your work, James. And thanks, Peter, for bringing this to light.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>James Golick</strong> &middot; <time datetime="2010-12-10T01:16:00+00:00">December 10, 2010 at 1:16 am</time></p>
      <p>@Carl Don't. If the service you're dealing with absolutely refuses to purchase a certificate that is signed by a trusted authority, then create your own certificate authority, add its certificate to your certificate authority bundle, and use it to sign their certificate.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Damon</strong> &middot; <time datetime="2010-12-19T08:35:00+00:00">December 19, 2010 at 8:35 am</time></p>
      <p>@James You make it sound like a self-signed cert is a bad thing. What if I want to use it for internal purposes and don't feel like paying the fee for a "real" cert? Yes, I know they're not expensive, but it'd certainly be nice to have that option.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Glenn Rempe</strong> &middot; <time datetime="2010-12-19T20:24:00+00:00">December 19, 2010 at 8:24 pm</time></p>
      <p>Thanks James for putting this gem together.  I came to this site (via Google) since I was looking for how to solve the issue where RVM installed Ruby's that are installed with RVM's openssl package (see : <a href="http://rvm.beginrescueend.com/packages/openssl/" rel="nofollow">http://rvm.beginrescueend.com/packages/openssl/</a> ) contain no root certificates by default so all SSL interaction fails.  I was only able to address this by copying all of the files in the /etc/ssl/certs directory from an Ubuntu 10.04 install to the ~/.rvm/usr/ssl/certs dir on the servers using RVM.  While this appears to work fine for now it highlighted for me the problem that there appears to be no easy way to get a 'full set' of root certs and install them easily into RVM system.  Without this, your gem only brings another problem to the forefront.  The cacert.pem file linked to above appears to need various types of post processing to install it which appears non-trivial (e.g. splitting the single file and installing each cert manually? I was not able to find instructions for this process.).  Do you have a recommendation on a better way to handle this? Is there a script out there that will properly install the certs, setting the groundwork for using your gem?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jonathan Rochkind</strong> &middot; <time datetime="2010-12-23T18:05:00+00:00">December 23, 2010 at 6:05 pm</time></p>
      <p>Damon: The link Mike posted, <a href="http://gagravarr.org/writing/openssl-certs/others.shtml" rel="nofollow">http://gagravarr.org/writing/openssl-certs/others.shtml</a>, has instructions for getting OpenSSL (which is what ruby ssl is using) to accept a self-signed certificate (or for that matter, a certificate signed by a CA not already in your OS default bundle of trusted CA's).  </p><p>I haven't tried it yet myself, but am going to need to also.   It is awfully confusing, and involves slightly differnet file locations on different OSs and packages. </p><p>It is certainly true that you're giving up much of the security of SSL if you don't insist on chain of trust checking of certs.  It is ALSO true that it is often a serious pain in the butt to get this working, and ensure it stays working accross your entire set of servers and new servers as they come on, etc. </p><p>James: I actually kind of liked the ability you now removed to intentionally set the ca_file location.  I agree it's better to have a zero-config option that doesn't  _require_ this to be set, but if you were able to set it manually if you wanted to, it would make it easier to have an (eg) rails app that had it's own trusted cert file bundled with it, that you knew SSL connections would use, so you could deploy the app to any OS at all and know it would be trusting the right things, without having to deal with varying openssl-install-locations or varying versions of OS-default trusted CA bundles. (In my case we have a bunch of digicert-signed certs, and digicert CA doesn't seem to be included in the default RHEL5 openssl trusted cert bundle. Argh.)  </p><p>Additionally, I find it awfully convenient to be able to do VERIFY_NONE in _development_ (never in production).  Getting the chain of trust to be working properly can be a big pain, and sometimes I want/need to get some features done first, and worry about the chain of trust at a later date. Hmm, in a Rails app, maybe I could do that by only conditionally including the always_verify gem in the production environment?  Does that make sense, or any other ideas?</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
