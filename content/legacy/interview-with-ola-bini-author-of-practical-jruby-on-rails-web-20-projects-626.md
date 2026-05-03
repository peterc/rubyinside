---
title: Interview with Ola Bini, author of “Practical JRuby on Rails Web 2.0 Projects”
date: '2007-10-07'
author: Peter Cooper
author_slug: admin
post_id: 626
slug: interview-with-ola-bini-author-of-practical-jruby-on-rails-web-20-projects-626
url: "/interview-with-ola-bini-author-of-practical-jruby-on-rails-web-20-projects-626.html"
categories:
- jruby
- miscellaneous
---

{{< rawhtml >}}
<p><img src="/assets/2007/10/OlaBini.jpg" height="167" width="138" border="1" hspace="4" vspace="4" alt="Olabini"></p>
<p><a href="http://ola-bini.blogspot.com/">Ola Bini</a> is one of the core team of developers working on JRuby and the author of <a href="practical-jruby-on-rails-book-by-ola-bini-625.html">Practical JRuby on Rails Web 2.0 Projects</a>, announced separately <a href="practical-jruby-on-rails-book-by-ola-bini-625.html">here</a> on Ruby Inside. In conjunction with the launch of the book, I wanted to ask Ola some questions about his involvement with JRuby, how he used his knowledge to write the book, and where JRuby's future is heading from here.</p>
<p><strong><em>Ruby Inside:</em></strong><strong> What areas of JRuby have you taken responsibility for? Do you tend to work directly with other team members or have you focused on areas that most interest you?</strong></p>
<blockquote><p><em>Ola Bini:</em> Well, I've done much work on the surrounding parts of JRuby - things like ActiveRecord-JDBC for example. I've also been responsible for trying new Ruby applications/frameworks and getting them to work with JRuby. Other than that, I'm all over the code base with no specific area (except for YAML and regular expressions, which I'm also quite interested in). We tend to overlap in our interests, but most of us have one area that they focus more on.</p></blockquote>
<p><strong>Do you think your involvement with JRuby made you specially qualified to write the book? Did you cover concepts and angles that, perhaps, a non core developer would have missed?</strong></p>
<blockquote><p>Yes, I'm pretty sure that being a core developer made the writing of the book better. In most cases this was because I know exactly what can be done with JRuby - someone who is not a core developer could probably research and find this out too, but it would take a major investment to get that far, whereas I already knew it. Also, during the writing of the book, numerous bugs in the JRuby was found that I could fix during the writing. This made the process easier too.</p></blockquote>
<p><strong>How did you find the process of writing the book compared to writing code? Did writing the book give you any new ideas or perspectives to take over to your JRuby work?</strong></p>
<blockquote>
<p>It's a very different thing to write a book, compared to writing code. It's hard to qualify why, though. I think the major difference is that when you're coding, you work within a quite rigid framework. There are lots of possibilities for creativity, but in the end you still have to make a computer understand. This restriction doesn't exist when writing a book. It's more open ended, and thus harder.</p>
<p>The writing definitely gave my ideas for JRuby, some of which are implemented (for example the mongrel-jcluster and the jruby-server came directly from the book).</p>
</blockquote>
<p><strong>Where do you see JRuby moving in the short term future (within the next year)?</strong></p>
<blockquote><p>I think adoption of JRuby is just starting out in earnest and the next few months will see a rise in usage and new cool applications using JRuby. Exactly where JRuby ends up in 6 months depends a little bit on which kind of companies are the first adopters, but ideally the current approach of combining JRuby and Rails will continue, brining forth new frameworks that combine Java and Ruby libraries to good effect (see ActiveHibernate, for example).</p></blockquote>
<p><strong>Will Ruby 1.9 (and possibly 2.0) have an effect on JRuby and are there plans to continue to develop JRuby to match the latest developments with MRI and/or Rubinius?</strong></p>
<blockquote><p>1.9 will absolutely have an effect on JRuby. We want JRuby to be able to be compatible with 2.0 when that arrives - but that is not really a large investment. Right now we think we can actually use the same code base and support both 1.8 and 2.0 with a command line switch. Our codebase is sufficiently clean and easy to handle that the 2.0 language changes won't make much impact. We're absolutely determined to continue cooperation with Rubinius too. Ideally, we'd like to use their Ruby implementation of core libraries in JRuby. This will probably happen within the next 6 months, but it's hard to say exactly.</p></blockquote>
<p>Thanks Ola! Make sure to check out <a href="http://ola-bini.blogspot.com/">Ola's personal blog</a>, it's a great read.</p>
<p><strong><em>Note: Pat Eyler of On Ruby </em></strong><strong><em><a href="http://on-ruby.blogspot.com/2007/10/author-interview-ola-bini.html">has also interviewed Ola</a></em></strong><strong><em>.</em></strong></p>
{{< /rawhtml >}}
