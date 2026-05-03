---
title: 'Parkaby: Faster HTML Generation with Ruby'
date: '2009-07-07'
author: Ric Roberts
author_slug: ricroberts
post_id: 1965
slug: parkaby-faster-html-generation-with-ruby-1965
url: "/parkaby-faster-html-generation-with-ruby-1965.html"
categories:
- miscellaneous
---

{{< rawhtml >}}
<p><img style="float:left;margin-right:12px;margin-bottom:12px" src="/assets/2009/07/parkaby.jpg" alt=""><a href="http://github.com/why/markaby/tree/master">Why's Markaby</a> is a really convenient bit of Ruby for generating HTML in your applications, rather than having to fiddle about with string interpolation or ERb, tangling together HTML and Ruby.</p>
<p>However, Markaby can be slow compared with other options like Erubis or HAML. <a href="http://judofyr.net/">Magnus Holm</a> has been working on <strong>an alternative solution called <a href="http://github.com/judofyr/parkaby/tree/master">Parkaby</a></strong>, which uses <a href="http://rubyforge.org/projects/parsetree/">ParseTree</a> for improved performance (coming out <em>up to 20 times faster</em> than Markaby in Magnus's tests).  Parkaby uses near-identical syntax to Markaby, so you still get to write beautiful ruby code for building your HTML.</p>
<pre>Parkaby {
    html {
      head {
        title "happy title"
      }
      body {
        h1 "happy heading"
        a "a link", "href" =&gt; "url"
      }
    }
  }</pre>
<p>Magnus admits that Parkaby is currently only experimental, and that there's room for more optimization, but I think he might be onto something. Parkaby is available on <a href="http://github.com/judofyr/parkaby/tree/master">Github</a>.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Stephen Stillwater</strong> &middot; <time datetime="2009-07-09T21:28:00+00:00">July 9, 2009 at 9:28 pm</time></p>
      <p>Why not just fork and improve Markaby?</p><p>Why's everyone out to get _why?</p><p>Why?</p><p>Why?</p><p>Whyyyyy?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>lanaer</strong> &middot; <time datetime="2009-07-09T21:36:00+00:00">July 9, 2009 at 9:36 pm</time></p>
      <p>What about erector ( <a href="http://erector.rubyforge.org/faq.html" rel="nofollow">http://erector.rubyforge.org/faq.html</a> ) ?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Magnus Holn</strong> &middot; <time datetime="2009-07-09T21:41:00+00:00">July 9, 2009 at 9:41 pm</time></p>
      <p>Because Parkaby isn't a modified Markaby, it's something completely different. However, I might learn some tricks I can apply to Markaby later :-)</p><p>Expect a few Sexp-related libraries coming from here (with the help from Adam Sanderson) in the near future...</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2009-07-09T21:48:00+00:00">July 9, 2009 at 9:48 pm</time></p>
      <p>Stephen: I think he has bigger fish to fry, so any libraries that compete with his are really just natural evolutions in their respective areas. I mean, gem installed Markaby didn't even work with Ruby 1.9 as of a month ago (perhaps it does now, I don't know).</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Andrew Chalkley</strong> &middot; <time datetime="2009-07-09T21:52:00+00:00">July 9, 2009 at 9:52 pm</time></p>
      <p>ERB! ERB! ERB! :D</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Brandon</strong> &middot; <time datetime="2009-07-10T00:36:00+00:00">July 10, 2009 at 12:36 am</time></p>
      <p>Trying to improve on _why's work isn't the same as being "out to get him"   I would guess that your question was at least partially tongue-in-cheek, but nonetheless I feel it's worth pointing out that even those who create competing technology generally give him a lot of credit for his contributions.   Aaron Patterson ("Tenderlove") has said complimentary things about Hpricot's API, but set out to write something much faster.   </p><p>Filling a need that is felt by many  many Rubyists is not the same as making a personal attack against the creator of a similar piece of software.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Stephen Stillwater</strong> &middot; <time datetime="2009-07-10T02:39:00+00:00">July 10, 2009 at 2:39 am</time></p>
      <p>Yeesh, you guys - I was being totally facetious. :)</p><p>I was trying to poke gentle fun at The Great XML Parser Battles of Yesteryear and _why's writeup about the (allegedly) biased shootouts.</p><p>More libraries to fill a common need is a great thing, and Parkaby looks very cool.</p><p>So, just joking around is all.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>joem</strong> &middot; <time datetime="2009-07-10T03:56:00+00:00">July 10, 2009 at 3:56 am</time></p>
      <p>Stephen: You forgot to say "Why's everyone out to get Stephen?"</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Brandon</strong> &middot; <time datetime="2009-07-10T04:44:00+00:00">July 10, 2009 at 4:44 am</time></p>
      <p>Yes, I thought so, but it wasn't clear to me just where the facetiousness began in your comment: at the 3rd line, at the 2nd line, or at the 1st line?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>ben</strong> &middot; <time datetime="2009-07-10T09:15:00+00:00">July 10, 2009 at 9:15 am</time></p>
      <p>'kay but still at the end it ends up with a dozen of similar libraries that pretty much do the same thing.<br>
"it's faster than the almost exactly previous same one [wich sucked] and look, I've done better".</p><p>Ruby/rails is really more about creativity I think than any other language, wich is cool, but sometimes I kind of feel bored to have the impression that everybody's trying to make it's thing on it's own, alone; and then give it to all saying it's more cool than the one it's totally been inspired by.</p><p>We're here with another html renderer…<br>
Can we talk about the html/xml/whatever parser ? hoW MANY ARE THEY ?</p><p>I sure don't get fully the point right here; but also sure that it creates a wonderful mess that weaken the whole stuff.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>lolcatz</strong> &middot; <time datetime="2009-07-10T15:49:00+00:00">July 10, 2009 at 3:49 pm</time></p>
      <p>Just curious on how to use Parkaby on 1.9? ParseTree doesn't work on 1.9 so i don't see a reason to use Parkaby.</p><p>And we all want to use 1.9 asap, right?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Dr Nic</strong> &middot; <time datetime="2009-07-10T22:44:00+00:00">July 10, 2009 at 10:44 pm</time></p>
      <p>Why is everyone out to get everyone who are out to get everyone? C'mon.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Stephen Stillwater</strong> &middot; <time datetime="2009-07-11T00:48:00+00:00">July 11, 2009 at 12:48 am</time></p>
      <p>@DrNic : Metapersecution FTW!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>roger</strong> &middot; <time datetime="2009-07-12T01:22:00+00:00">July 12, 2009 at 1:22 am</time></p>
      <p>Is this faster parsing time or execution time?</p><p>=r</p>
    </li>
      <li>
      <p class="comment-meta"><strong>roger</strong> &middot; <time datetime="2009-07-13T12:26:00+00:00">July 13, 2009 at 12:26 pm</time></p>
      <p>to answer my own question: it's execution time.</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
