---
title: 'Doodle: A New Way To Build and Define Ruby Classes'
date: '2008-03-10'
author: Peter Cooper
author_slug: admin
post_id: 795
slug: doodle-a-new-way-to-build-and-define-ruby-classes-795
url: "/doodle-a-new-way-to-build-and-define-ruby-classes-795.html"
categories:
- cool
- ruby-tricks
- tools
---

{{< rawhtml >}}
<p><img src="/assets/2008/03/doodle.jpg" width="233" height="113" alt="doodle.png"></p>
<p><a href="http://doodle.rubyforge.org/">Doodle</a> is an interesting new Ruby library that adds ActiveRecord-style conventions and relationship building functionality to the process of defining and instantiating (as above) Ruby classes.</p>
<p><img src="/assets/2008/03/doodle2.jpg" width="361" height="236" alt="doodle2.png"></p>
<p>Instead of manually building the accessors, setters, and relationships between classes, Doodle lets you define these on a single line, along with default values, initial values, and even validations.</p>
<p>Doodle is an interesting experiment although, personally, I think these sorts of constructs should be part of the base language. Hopefully Doodle will help to popularize this style.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Stephan</strong> &middot; <time datetime="2008-03-10T10:11:00+00:00">March 10, 2008 at 10:11 am</time></p>
      <p>Hmm, </p><p>that part "has :name, :kind =&gt; String" looks suspicioulsly like a variable declaration, doesn't it?<br>
I'm not sure whether I like this (which actually indicates that I probably don't). I though Ruby was all about being dynamic - as is not declaring variables, and certainly not their types. Please correct me if I'm wrong.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jonno</strong> &middot; <time datetime="2008-03-10T10:26:00+00:00">March 10, 2008 at 10:26 am</time></p>
      <p>I have often thought of writing something like this. I think it is a great idea. </p><p>Stephan, having an exception being thrown at runtime if the wrong variable is passed to a method is not making it any less dynamic.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2008-03-10T10:30:00+00:00">March 10, 2008 at 10:30 am</time></p>
      <p>It's certainly no less dynamic than ActiveRecord validations, say.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>raffaboss</strong> &middot; <time datetime="2008-03-10T11:54:00+00:00">March 10, 2008 at 11:54 am</time></p>
      <p>"I think these sorts of constructs should be part of the base language"... i think that "these sort of constructs" permits all sort of compiler optimization, too.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Ismael</strong> &middot; <time datetime="2008-03-10T13:09:00+00:00">March 10, 2008 at 1:09 pm</time></p>
      <p>Mmm. so if we're using this to optimize the compiler why not go all the way and make Ruby statically-typed :)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jo Potts</strong> &middot; <time datetime="2008-03-10T14:09:00+00:00">March 10, 2008 at 2:09 pm</time></p>
      <p>I think you missed the point stephan. This is a perfect example of what makes Ruby so fun and flexible as a language. The type declaration is simply for validation to help robustify things.</p><p>Not so sure about base language integration though - things like this work better as optional extras free to evolve on their own.</p><p>I'm definitely going to give it a try. I like it!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Robert Fischer</strong> &middot; <time datetime="2008-03-10T14:28:00+00:00">March 10, 2008 at 2:28 pm</time></p>
      <p>The reason this doesn't smell like Ruby is because it's not dynamic.</p><p>In Ruby, variables are "declared" by using them -- they're defined only in the point when you actually call them.  And this is less dynamic than ActiveRecord in general, although certainly not less dynamic than ActiveRecord validations.</p><p>If you want/like this kind of structure, take a look at Groovy, and (specifically) Groovy Builders.  This structure works out much better when you've got a quasi-typed language.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2008-03-10T14:31:00+00:00">March 10, 2008 at 2:31 pm</time></p>
      <p>@Robert: That's true for /variables/ but not for properties / attributes. Unless you use OpenStruct everywhere, you have to define class and object attributes, which is kinda at odds with the non-declarative style for variables.</p><p>This is really just a mega evolution of, say, attr_accessor type stuff, rather than all-out static variable declaration.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Sean O'Halpn</strong> &middot; <time datetime="2008-03-10T17:34:00+00:00">March 10, 2008 at 5:34 pm</time></p>
      <p>@Jo/Peter - you're spot on. The constraints in doodle are on attributes of objects, not the actual variables themselves. In other words, the specification is a kind of contract between the attribute (as a member of its object) and objects that want to be its value.</p><p>Doodle is not intended to be a general purpose replacement for normal class definition, unless you don't mind the overhead even for internal classes you're initializing yourself. It's meant for external facing classes that are likely to be initialized with input values from the Great Unwashed, e.g. in DSLs, config files or form parameters, etc. in which case you most probably ~are~ going to want validation and conversion. Doodle is my way of doing this in what I hope is a succinct and expressive manner.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Giles Bowkett</strong> &middot; <time datetime="2008-03-10T18:13:00+00:00">March 10, 2008 at 6:13 pm</time></p>
      <p><i>Doodle is an interesting experiment although, personally, I think these sorts of constructs should be part of the base language.</i></p><p>Dude, I totally disagree. The fact that so many things which <i>could</i> become part of the base language pop into being so frequently is one of the things that make Ruby great. We don't have to talk about X belongs in the core language until we've been using X for a year and seen real, measurable positive benefits from it. That's a huge advantage. It's so easy to turn Ruby into a variant of Ruby that suits you personally better than the regular Ruby that you get the benefits of <i>competition</i> and <i>evolution</i> in the language's change process. Someone else agrees this is a great idea but decides it should be implemented slightly differently, they code up an alternative, Doodle takes ideas from the alternative but pushes ahead with its core approach, etc., etc., pretty soon you have multiple choices, and if there's a need for agreeing on one of those choices, the community will do that automatically. The fact that these things <i>aren't</i> part of the core language is a <b><i>huuuuuuuge</i></b> strength.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jack Danger Canty</strong> &middot; <time datetime="2008-03-10T18:17:00+00:00">March 10, 2008 at 6:17 pm</time></p>
      <p>I was really happy about this when I saw the first screenshot but that faded when I saw the second.  I'd love to put something together by passing a block to Doodle.new(:Event) and have method_missing create the whole structure for me.</p><p>I don't have much need for a fast way to set the properties of an object by hand.  I'm always going to make that automatic.  What I'd like to be able to do quickly is generate the structure of an object.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>mike</strong> &middot; <time datetime="2008-03-10T18:31:00+00:00">March 10, 2008 at 6:31 pm</time></p>
      <p>I like it!  Will it play nicely with activerecord?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2008-03-10T19:11:00+00:00">March 10, 2008 at 7:11 pm</time></p>
      <p>The reason I think things similar to this should be in the core language is because as a reasonably "pure" object oriented language, it seems rather odd that there's no simple way to define relationships between classes. Most applications require it (as well as many libraries, such as the ORMs - ActiveRecord and DataMapper, for example), yet the core language support is just not there.</p><p>If we can have attr_accessor and Symbol#to_proc (a fanciful piece of syntactic sugar, if ever there was), it seems strange to me that there is no standardization on defining and manipulating class relationships, defining validations, and all manner of "every day" things we have to constantly reinvent in our own programs.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Marcio</strong> &middot; <time datetime="2008-03-11T02:08:00+00:00">March 11, 2008 at 2:08 am</time></p>
      <p>@Peter:<br>
I agree with you 100%, and i've been working on a library that do exactily what you describe. I always felt that class relationships should be built-in and a first-class citizen in a OO language like ruby.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Ryan A.</strong> &middot; <time datetime="2008-03-11T23:17:00+00:00">March 11, 2008 at 11:17 pm</time></p>
      <p>I think there are no standards for this as the difficulty would be deciding on the API. But at least we can get Doodle and use their API :) I've done something similar (yet unreleased) for our production environment... Not as sophisticated though.</p><p>My question is - what are we going to do with all the left over 'legacy' ways of doing things if we did standardise on this, and does this lead the way to another language that is more simple? It looks like Ruby is slowly being infiltrated by Perl's "there's more than one way to do it" axiom, for better or worse.</p><p>How LISP like is this syntax? Are we coming full circle? Oh the horror! I'm enjoying all this tinkering, though.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Scott W.</strong> &middot; <time datetime="2008-03-13T18:15:00+00:00">March 13, 2008 at 6:15 pm</time></p>
      <p>I see how "has" is an Active-Record style of "has_many" but I don't see how to achieve the "belongs_to" feature of Active-Record?  Am I asking too much?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>/I3az/</strong> &middot; <time datetime="2008-03-14T12:00:00+00:00">March 14, 2008 at 12:00 pm</time></p>
      <p>Well I'm glad Ruby embraces TMTOWTDI</p><p>Doodle looks promising to me.   For those of u who still tinker with Perl will notice its similarities with Moose (a "kinda of" Perl6 OO system on Perl5).   Doodle is still very young but it can't do no worse than develop further along the lines of what Moose has done &amp; doing.</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
