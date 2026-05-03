---
title: 'Faker: Quick “Fake Data” Generation in Ruby'
date: '2007-12-03'
author: Peter Cooper
author_slug: admin
post_id: 665
slug: faker-quick-fake-data-generation-in-ruby-665
url: "/faker-quick-fake-data-generation-in-ruby-665.html"
categories:
- cool
- ruby-tricks
---

{{< rawhtml >}}
<p>I love finding a library that does exactly what it claims to do, and does it in the simplest way possible. <a href="http://faker.rubyforge.org/">Faker</a> by <a href="http://www.bencurtis.com/">Ben Curtis</a> is a Ruby library, packaged as a Ruby Gem, that generates "fake data" for you, in the form of names, telephone number, e-mail addresses, addresses, and so forth.</p>
<p>For example:</p>
<pre>Faker::Name.name  # =&gt; "Gwendolyn Wehner"
Faker::Internet.email # =&gt; "ava.conn@<!--*-->emmerich.info"
Faker::Internet.free_email # =&gt; "angelina.labadie@<!--*-->hotmail.com"
Faker::Internet.user_name # =&gt; "mitchel.heaney"</pre>
<p>This could be particularly useful for throwing data at any libraries or systems you develop that need to process personal details.</p>
<p>I had trouble installing Faker in the usual way (with <span style="font-style: italic;">gem install faker</span>) as the Ruby Gems server reports that the file could not be found. An easy workaround, for now, is to download the gem manually:</p>
<pre>wget <a href="http://gems.rubyforge.org/gems/faker-0.2.0.gem">http://gems.rubyforge.org/gems/faker-0.2.0.gem</a>
gem install faker
</pre>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Jon Leighton</strong> &middot; <time datetime="2007-12-03T21:07:00+00:00">December 3, 2007 at 9:07 pm</time></p>
      <p>Cool. I think the 404 thing is a problem with the Rubyforge server... I had trouble installing Rails today too.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Daniel Fischer</strong> &middot; <time datetime="2007-12-03T21:09:00+00:00">December 3, 2007 at 9:09 pm</time></p>
      <p>This can be particularly useful for test data, sweet. Thanks!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Tammer Saleh</strong> &middot; <time datetime="2007-12-03T21:33:00+00:00">December 3, 2007 at 9:33 pm</time></p>
      <p>Hi Peter,</p><p>I've been having problems with rubyforge all day, so I think the issue is on their side.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Nikc</strong> &middot; <time datetime="2007-12-03T21:48:00+00:00">December 3, 2007 at 9:48 pm</time></p>
      <p>great tool for spammers!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Koen Van der Auwera</strong> &middot; <time datetime="2007-12-04T10:57:00+00:00">December 4, 2007 at 10:57 am</time></p>
      <p>Nice, thanks!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Mike Subelsky</strong> &middot; <time datetime="2007-12-04T18:06:00+00:00">December 4, 2007 at 6:06 pm</time></p>
      <p>Another alternative is my random_data gem with random dates, times, integers, strings, booleans, addresses, as well as the ability to randomly select from a text file:</p><p><a href="http://random-data.rubyforge.org/" rel="nofollow">http://random-data.rubyforge.org/</a></p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
