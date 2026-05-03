---
title: 'Patron: A Simpler Ruby HTTP Client for Ruby'
date: '2009-07-17'
author: Ric Roberts
author_slug: ricroberts
post_id: 2067
slug: patron-a-simpler-ruby-http-client-2067
url: "/patron-a-simpler-ruby-http-client-2067.html"
categories:
- miscellaneous
---

{{< rawhtml >}}
<p><img src="/assets/2009/07/philliptoland.png" alt="Phillip Toland" style="float:left; margin-right:12px; margin-bottom:12px">Until recently, I had been using the <a href="http://github.com/taf2/curb/tree/master">Curb</a> library for making HTTP requests with Ruby, and I must say I was fairly happy with it.  <a href="http://fiatdev.com/">Phillip Toland</a>, on the other hand, wasn't satisfied with Curb's API and the fact that it is tricky to modify (being implemented mainly in C).  So, he came up with <strong>an alternative called <a href="http://github.com/toland/patron/tree/master">Patron</a></strong>, written as much as possible in Ruby.</p>
<p>Patron is based on <a href="http://curl.haxx.se/libcurl/">libcurl</a>, just like Curb, but it aims to provide a simpler interface whilst still taking advantage of libcurl's strengths.  To use Patron you can instantiate a Session object with your desired options:  </p>
<pre>sess = Patron::Session.new
sess.base_url = "http://search.twitter.com/"</pre>
<p>...and then call methods against that session to perform your GET, HEAD, PUT, POST or DELETE operations. For example:   </p>
<pre>response = sess.get "search.json?q=ruby"</pre>
<p>I really like the way that Patron lets you can send custom headers with your request, as I found this a bit fiddly in Curb.</p>
<pre>sess.post("/foo/stuff", "some data", {"Content-Type" =&gt; "text/plain"})</pre>
<p>Phillip provides more background about his design choices on his <a href="http://fiatdev.com/2009/07/03/announcing-patron-a-ruby-http-client-library">blog</a>. You can find Patron on <a href="http://github.com/toland/patron/tree/master">Github</a> or install it as a gem.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Antonin Amand</strong> &middot; <time datetime="2009-07-18T02:53:00+00:00">July 18, 2009 at 2:53 am</time></p>
      <p>It may be a awesome implementation, but it's terrifying to see how many times the wheel gets reinveted just for the sake of a "better" api. libcurl + typhoeus + Patron ... all of those are based on libcurl and I don't talk about all the "sexy" wrappers based on net/http standard lib.<br>
Diversity is a good thing, but their is no point in adding new gimmicks.<br>
If a base library delivers maximum performance and covers the whole protocol, you can build anything upon it with ruby. People will improve it because it will improve the whole ecosystem. But to much diversity expose itself to natural selection, which mean death for a lot of projects.<br>
A lot of time has been spent by many developers on building THE http library. Ruby is a tremendous playground, but if we want companies to leverage the power ruby we have to stop building sex toys and start capitalizing on what's good enough to become a enterprise-grade library.</p><p>I don't want to denigrate Philip Tolland's work. What he had done is something I wouldn't have done better. But I would like ruby to be a competitive language in a far more range than web frameworks and http clients.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>lolcatz</strong> &middot; <time datetime="2009-07-18T09:45:00+00:00">July 18, 2009 at 9:45 am</time></p>
      <p>Antonin Amand, +1</p>
    </li>
      <li>
      <p class="comment-meta"><strong>ben</strong> &middot; <time datetime="2009-07-18T09:50:00+00:00">July 18, 2009 at 9:50 am</time></p>
      <p>I totally agreee… same thoughts; ruby's a playground that'll be killed by all those 'i wanna name my i-ve-done-it-better-but-its-pretty-much-the-same-but-its-just-a-little-bit-better work ' kind of library…</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Timothy Johnson</strong> &middot; <time datetime="2009-07-18T11:14:00+00:00">July 18, 2009 at 11:14 am</time></p>
      <p>The world isn't made better by denigrating someone who open-sources something he built and thought other would find useful, for philosophical reasons.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Mark Murphy</strong> &middot; <time datetime="2009-07-18T12:56:00+00:00">July 18, 2009 at 12:56 pm</time></p>
      <p>"Diversity is a good thing, but their is no point in adding new gimmicks."</p><p>Open source's mantra is "scratch your own itch". Mr. Tolland had an itch. He scratched it. He made the results available as open source.</p><p>This is one of those side-effects of living in a free society, where people are given wide latitude to do what it is they want to do.</p><p>If you would like to live in a society where people are not granted such freedom, I am sure there are some authoritarian regimes that could use a few good engineers.</p><p>"but if we want companies to leverage the power ruby we have to stop building sex toys and start capitalizing on what's good enough to become a enterprise-grade library."</p><p>And somebody who has that itch to scratch will hopefully scratch it. Most likely, it is not Mr. Tolland's job to scratch your particular itch.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Daniel Berger</strong> &middot; <time datetime="2009-07-18T16:16:00+00:00">July 18, 2009 at 4:16 pm</time></p>
      <p>"Windows users are on your own. Good luck with that."</p><p>Hey, thanks!</p><p>Also, why do we need libcurl? It's ultimately just a bunch of stuff over the top of sockets, right? Can't we make it pure Ruby?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Antonin Amand</strong> &middot; <time datetime="2009-07-18T16:16:00+00:00">July 18, 2009 at 4:16 pm</time></p>
      <p>@timothy If you read me well I wasn't denigrating at all Mr. Tolland's work.</p><p>@mark I understand very well what you are saying and I share your point view on open-source. I don't ask anyone to scratch my itches ;)<br>
It's just I would like to read about other things than http clients on blog posts.</p><p>Maybe my language was a bit disrespectful and I apologize for that.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2009-07-18T20:58:00+00:00">July 18, 2009 at 8:58 pm</time></p>
      <p>It's just as well J K Rowling didn't think there were already enough wizard stories out there.. :)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Ben Marini</strong> &middot; <time datetime="2009-07-19T20:53:00+00:00">July 19, 2009 at 8:53 pm</time></p>
      <p>Personally I love all the diversity, but if you read Phillip's blog you'll see that he tried patching Curb before giving in and building his own client. Sure, there are a lot of people in ruby community that want to open source a lib with a clever name, that's "simple yet powerful", and preferably has some sort of DSL. Maybe some are too quick to jump at the chance to reinvent the wheel. But what I love about the community is that it's made up of people that aren't satisfied with "good enough" solutions.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>alan</strong> &middot; <time datetime="2009-07-21T08:35:00+00:00">July 21, 2009 at 8:35 am</time></p>
      <p>The truth is, net/http is a square motherfucking wheel. Anyone who has ever had to use it for a couple basic tasks should know this. Sure you can write a pure ruby, simple http client, which runs too slow and eats too much mem. Ruby doesn't have its strong points in dealing with repetitive, low level tasks; so we need a balance between comfort of use and speed.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Matt Aimonetti</strong> &middot; <time datetime="2009-07-21T10:19:00+00:00">July 21, 2009 at 10:19 am</time></p>
      <p>As a CouchDB Ruby DSL developer, I can tell you that I appreciate and usually test all the HTTP clients out there. Even tho they might seem pretty similar, most implementations are quite different and will fulfill different needs.</p><p>A simple example is that only patron lets you easily reuse a connection/session by keeping it open. It might sound like a details to mainly, but in the case of CouchDB where queries are run over HTTP, this is a major advantage that improves performances by quite a lot.</p><p>Typhoeus on the other hand has a callback mechanism and a non-blocking-multi query system.</p><p>Anyways, if you don't like the diversity and don't need something else than net/http, then forget about what you just read.</p><p>- Matt</p>
    </li>
      <li>
      <p class="comment-meta"><strong>ben</strong> &middot; <time datetime="2009-07-22T09:48:00+00:00">July 22, 2009 at 9:48 am</time></p>
      <p>@ Timothy : not denigrating the work, but fed up with the similarity of those kind of marketable named releases. It could extend some  already commonly used libraries, making those stronger and more reliable, hence would strengthen the whole ruby stuff.</p><p>Like Anthonin can explain it, it has to become more than a sex toys playground.</p><p>Open sourcing for open sourcing something and being able to say "hey, I'm an open sourcer" won't make ruby neither the world better.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>ben</strong> &middot; <time datetime="2009-07-22T09:59:00+00:00">July 22, 2009 at 9:59 am</time></p>
      <p>@ Mark Murphy : But if everibody open source its kind of the same stuff, does anything meaningful remains ? Something I don't get here.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Greg</strong> &middot; <time datetime="2009-07-23T19:16:00+00:00">July 23, 2009 at 7:16 pm</time></p>
      <p>I've been experimenting with Patron and compared its throughput to identical code that was using open-uri. After letting both versions run many times the Patron side was close to 2x as fast consistently.</p><p>I appreciate that Patron is available. It won't scratch every itch I have, but for reading content from a server it's really nice to have the speed and simple interface. I'd like to see the same speed out of net/http or a similar package, because sometimes I want that low-level access, but so far I haven't had the speed be a major issue, whereas development time is always an issue. And, I'd much rather program in Ruby than go back to Perl or Java or C/C++.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jason Rogers</strong> &middot; <time datetime="2009-07-24T04:42:00+00:00">July 24, 2009 at 4:42 am</time></p>
      <p>And for those who would like a similar, easy-to-use, yet all-ruby-all-the-way approach there is RestClient (<a href="http://rest-client.heroku.com/rdoc/" rel="nofollow">http://rest-client.heroku.com/rdoc/</a>). Probably doesn't include libcurl's kitchen sink, but it definitely does the major verbs easily. And since it's Ruby you aren't constrained to the MRI. You can run it on the JVM (JRuby), and probably even run it in Rubinius or MagLev.</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
