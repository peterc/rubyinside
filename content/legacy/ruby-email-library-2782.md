---
title: 'Mail: An All New Ruby E-mail Library'
date: '2009-11-11'
author: Peter Cooper
author_slug: admin
post_id: 2782
slug: ruby-email-library-2782
url: "/ruby-email-library-2782.html"
categories:
- cool
---

{{< rawhtml >}}
<p><img src="/assets/2009/11/emailIcon.png" width="84" height="88" alt="emailIcon.png" style="float:left; margin-right:12px; margin-bottom:12px;">To date, the main ways to send e-mails from Ruby have been <a href="http://ruby-doc.org/stdlib/libdoc/net/smtp/rdoc/index.html">Net::SMTP</a>, <a href="http://tmail.rubyforge.org/">TMail</a>, and Rails' <a href="http://api.rubyonrails.org/classes/ActionMailer/Base.html">ActionMailer</a> (which uses TMail). Now, however, there's a fourth option, the simply named "<a href="http://github.com/mikel/mail">mail</a>" by Mikel Lindsaar.</p>
<p><a href="http://github.com/mikel/mail">Mail</a> is a new pure Ruby library designed to handle the generation, parsing, and sending of e-mail in a "Rubyesque" manner. Both the sending and receiving e-mails can be handled through the library and, where necessary, Mail proxies methods from libraries like Net::SMTP and Net::POP3. Ruby 1.9 support has been built in from day one so dealing with different text encodings in your e-mails is easier than ever (Mikel claims this is less than straightforward with TMail). Mikel also points out that Mail has 100% spec coverage.</p>
<p>There are lots of code examples on the Mail page but to give you an idea of how it works, here's a code example that sends an e-mail with an attachment:</p>
<pre><span class="constant">Mail</span><span class="punct">.</span><span class="ident">defaults</span> <span class="keyword">do</span>
  <span class="ident">smtp</span> <span class="punct">'</span><span class="string">127.0.0.1</span><span class="punct">'</span> <span class="comment"># Port 25 defult</span>
<span class="keyword">end</span>

<span class="ident">mail</span> <span class="punct">=</span> <span class="constant">Mail</span><span class="punct">.</span><span class="ident">new</span> <span class="keyword">do</span>
      <span class="ident">from</span> <span class="punct">'</span><span class="string">me@<!--*-->test.lindsaar.net</span><span class="punct">'</span>
        <span class="ident">to</span> <span class="punct">'</span><span class="string">you@<!--*-->test.lindsaar.net</span><span class="punct">'</span>
   <span class="ident">subject</span> <span class="punct">'</span><span class="string">Here is the image you wanted</span><span class="punct">'</span>
      <span class="ident">body</span> <span class="constant">File</span><span class="punct">.</span><span class="ident">read</span><span class="punct">('</span><span class="string">body.txt</span><span class="punct">')</span>
  <span class="ident">add_file</span> <span class="punct">{</span><span class="symbol">:filename</span> <span class="punct">=&gt;</span> <span class="punct">'</span><span class="string">somefile.png</span><span class="punct">',</span> <span class="symbol">:data</span> <span class="punct">=&gt;</span> <span class="constant">File</span><span class="punct">.</span><span class="ident">read</span><span class="punct">('</span><span class="string">/somefile.png</span><span class="punct">')}</span>
<span class="keyword">end</span>

<span class="ident">mail</span><span class="punct">.</span><span class="ident">deliver!</span></pre>
<p>As well as the main GitHub page for the Mail project, there's also <a href="http://groups.google.com/group/mail-ruby">a mail-ruby Google Group</a> where questions can be asked, etc.</p>
<p style="background-color:#ffd;padding:8px;font-family:verdana;font-size:12px"><a href="http://devver.net/caliper" rel="nofollow"><img src="/assets/2009/10/caliper-logo.png" width="98" height="42" alt="caliper-logo.png" style="float:right; margin-bottom:8px; margin-left:12px;"></a><em>[ad]</em> Find duplication, code smells, complex code and more in your Ruby code with <a href="http://devver.net/caliper" rel="nofollow">Caliper!</a> The metrics are free and setup takes just one click. <a href="http://devver.net/caliper" rel="nofollow">Get started!</a></p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>apeacox</strong> &middot; <time datetime="2009-11-11T15:28:00+00:00">November 11, 2009 at 3:28 pm</time></p>
      <p>Have you tried the Pony (<a href="http://github.com/adamwiggins/pony" rel="nofollow">http://github.com/adamwiggins/pony</a>) gem? I've used it, works simply well, it's used like a php mail() call :-)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Stephen Celis</strong> &middot; <time datetime="2009-11-11T15:39:00+00:00">November 11, 2009 at 3:39 pm</time></p>
      <p>Don't forget Pony!</p><p><a href="http://github.com/adamwiggins/pony" rel="nofollow">http://github.com/adamwiggins/pony</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2009-11-11T16:51:00+00:00">November 11, 2009 at 4:51 pm</time></p>
      <p>Ah yes, I totally forgot about Pony! I tried it once and it worked okay.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Daniel Berger</strong> &middot; <time datetime="2009-11-11T17:53:00+00:00">November 11, 2009 at 5:53 pm</time></p>
      <p>Hey, as long as we're pumping other email libraries, I'll pump my ez-email library:</p><p><a href="http://shards.rubyforge.org/wiki/wiki.pl?Ez-Email" rel="nofollow">http://shards.rubyforge.org/wiki/wiki.pl?Ez-Email</a></p><p>Can't do attachments yet, I'll have to get on that. :)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jason Seifer</strong> &middot; <time datetime="2009-11-11T18:49:00+00:00">November 11, 2009 at 6:49 pm</time></p>
      <p>I remember that clip art!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2009-11-11T19:04:00+00:00">November 11, 2009 at 7:04 pm</time></p>
      <p>I did a Tineye search on it before I used it and found it's in use on hundreds of sites, so I'm guessing it's verrry popular :-)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Mikel Lindsaar</strong> &middot; <time datetime="2009-11-12T00:10:00+00:00">November 12, 2009 at 12:10 am</time></p>
      <p>Hey Peter,</p><p>One correction, I aim for 100% spec coverage :)  Not quite there... but I am in the high 95% percentile per rcov usually.</p><p>Also, another point, in Mail I tried to bring together all the different things a mail library should do.  I didn't know about Pony, and Ez-Mail, they look good.</p><p>Anyone who wants to help contribute to Mail is more than welcome.  It is a full on project and needs all the bright people it can get.</p><p>Regards</p><p>Mikel</p>
    </li>
      <li>
      <p class="comment-meta"><strong>John Woodell</strong> &middot; <time datetime="2009-11-12T19:45:00+00:00">November 12, 2009 at 7:45 pm</time></p>
      <p>Unfortunately, tmail doesn't attempt to parse MIME quoted_printable content. Sending mail is only half of the challenge. We desperately need a mail library with spec coverage. THANKS!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Loren Segal</strong> &middot; <time datetime="2009-11-17T09:54:00+00:00">November 17, 2009 at 9:54 am</time></p>
      <p>A small but equally powerful mail lib: mmmail. </p><p><a href="http://github.com/lsegal/mmmail" rel="nofollow">http://github.com/lsegal/mmmail</a></p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
