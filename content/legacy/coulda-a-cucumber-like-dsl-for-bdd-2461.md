---
title: 'Coulda: A Cucumber-like DSL for BDD'
date: '2009-09-14'
author: Ric Roberts
author_slug: ricroberts
post_id: 2461
slug: coulda-a-cucumber-like-dsl-for-bdd-2461
url: "/coulda-a-cucumber-like-dsl-for-bdd-2461.html"
categories:
- miscellaneous
---

{{< rawhtml >}}
<p><img style="float:left; margin-right:12px; margin-bottom:12px" src="/assets/2009/09/cucumber.jpg" alt="cucumber"><a href="http://evan.tiggerpalace.com/">Evan Light</a> has recently pushed his <a href="http://github.com/elight/coulda"><em>Coulda</em></a> project to Github - it's a test framework based on Test::Unit, inspired by <a href="http://cukes.info/">Cucumber</a>, <a href="http://www.thoughtbot.com/projects/shoulda">Shoulda</a> and <a href="http://yehudakatz.com/2008/05/12/by-thors-hammer/">Thor</a>.</p>
<p>Coulda works like Cucumber in that it's a Domain Specific Language for capturing the behaviour expected by your code, as part of the  Behavior Driven Develoment approach (BDD). Others have noted it's a <a href="http://rubyflow.com/items/2750">little like the RSpec story runner.</a></p>
<p>Where Coulda differs is that instead of using <a href="http://wiki.github.com/aslakhellesoy/cucumber/gherkin">Gherkin</a> to convert your statements about the behavior to code using regular expressions, it uses standard method calls. This is less of a cognitive leap for the developer... with Coulda, you can test like you code.</p>
<pre>
require 'rubygems'
require 'coulda'
include Coulda

Feature "feature name" do
  in_order_to "foo"
  as_a "bar"
  i_want_to "blech"

  def something
  end

  def expectation
  end

  Scenario "pending scenario"

  Scenario "another scenario" do
    Given "a pending prereq"
    When "something happens" do
      something
    end
    Then "expect something else" do
      expectation
    end
  end

  Scenario "that is live" do
    Given "foo" do; end
    When "bar" do; end
    Then "blech" do; end
  end
end
</pre>
<p>To be honest, I'm not a big user of Cucumber, so I'm not able to give much of an intelligent commentary here - I suggest you read more about Coulda on <a href="http://evan.tiggerpalace.com/articles/2009/09/12/coulda/">Evan's blog</a>. You can get the code on <a href="http://github.com/elight/coulda">Github</a>.</p>
<p style="background-color:#ffd;padding:8px;font-family:verdana;font-size:12px"><a href="http://devver.net/"><img src="/assets/2009/07/devver-icon.gif" width="156" height="40" alt="devver-icon.gif" style="float:right; margin-bottom:8px; margin-left:12px;"></a><em>Also..</em> Got a slow Test::Unit or RSpec suite? <b>Run them up to three times faster on</b> <a href="http://devver.net/"><b>Devver's cloud!</b></a> Setup is simple and requires no code changes. <a href="http://devver.net/">Sign up now!</a></p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>M. Scott Ford</strong> &middot; <time datetime="2009-09-14T17:55:00+00:00">September 14, 2009 at 5:55 pm</time></p>
      <p>One of the big advantages of Cucumber's Gherkin language is that it can be read and written by *non-programmers*. Coulda looks great for a dev team that wants to throw BDD into the mix, but getting your customer or product owner to write the behavioral tests for you should be the ultimate goal.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Kevin W. Gisi</strong> &middot; <time datetime="2009-09-14T19:01:00+00:00">September 14, 2009 at 7:01 pm</time></p>
      <p>To be honest, this seems a step away from the huge benefit of Cucumber stories.</p><p>Unlike unit and functional tests, the cucumber stories are end-user-friendly. You can come back to a client, show them the story, and have them walk through each step.</p><p>As much as contexts and such are great for us developer types, Cucumber stories aren't the place for them.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>James Thompson</strong> &middot; <time datetime="2009-09-14T21:28:00+00:00">September 14, 2009 at 9:28 pm</time></p>
      <p>While this is certainly a neat project I still prefer Cucumber's approach. This makes the feature scenarios less distinct and readable to a non-developer. It's not bad in that regards, but it introduces code where it might not belong in my estimation if you are using Cucumber feature's to get non-developers involved with defining test criteria.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jeremy</strong> &middot; <time datetime="2009-09-14T23:27:00+00:00">September 14, 2009 at 11:27 pm</time></p>
      <p>Can I ask an honest question here?  </p><p>Who *actually* lets customers write their tests? </p><p>I mean honestly, for real letting your customers go wild writing their own business logic tests.  *Reading* I understand, but you can get readable output from coulda or even T::U with some of the libs.  But I've never actually, in practice, seen anyone who lets their customer write their Cucumber tests.  If you do, please blog about it, because I'm very curious as to how that works out.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Christian Romney</strong> &middot; <time datetime="2009-09-15T00:51:00+00:00">September 15, 2009 at 12:51 am</time></p>
      <p>Given that so many people read this blog, I would humbly ask you do the community a huge service and remove the first line of your code sample. :)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Sandro</strong> &middot; <time datetime="2009-09-15T05:40:00+00:00">September 15, 2009 at 5:40 am</time></p>
      <p>Christian, what are you talking about? The code sample is an example; it's client code not library code. Who cares if the consumer of Coulda uses rubygems or not?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Casper</strong> &middot; <time datetime="2009-09-15T05:58:00+00:00">September 15, 2009 at 5:58 am</time></p>
      <p>The fact that a customer reads the test is not so important, but for him to be able to read and understand the tests is. It makes the developer write the tests at the consumer level and not at his own level of understanding of how the program should behave. The tests are the first consumer of the code and therefor should be more inline with a user than a developer mindset.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Stefan</strong> &middot; <time datetime="2009-09-15T07:13:00+00:00">September 15, 2009 at 7:13 am</time></p>
      <p>Coulda doesn't seem to be a real alternative for Cucumber because of Cucumber's support of writing tests in prosa.</p><p>@Jeremy:<br>
Cucumber can be used for discussing features of an application together with your customer. It's up to you if you do it;)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>andhapp</strong> &middot; <time datetime="2009-09-15T10:16:00+00:00">September 15, 2009 at 10:16 am</time></p>
      <p>@Christian - haha good one...</p><p>@Jeremy - I do not think anyone commenting here meant customers...there are other business account managers who have no idea about how the system works and since they are dealing with the clients cucumber does give them a bit of confidence that the system might perform as it says in the features. </p><p>I would still wish good luck to Evan on his work. Well done!!!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jeremy</strong> &middot; <time datetime="2009-09-15T18:05:00+00:00">September 15, 2009 at 6:05 pm</time></p>
      <p>I'm not asking about reading and understanding, I'm talking about writing.  You can get readable output from anything like this, but the whole "benefit" of Cucumber is that customers can write their own apparently.  Which no one seems to actually do.</p><p>So I'm confused how coulda is somehow worse than Cucumber simply because it can't do something you don't actually do...?  </p><p>I don't mean to be contrary; I'm just genuinely curious about it.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Evan Light</strong> &middot; <time datetime="2009-09-15T18:08:00+00:00">September 15, 2009 at 6:08 pm</time></p>
      <p>Once I've written the rake task for coulda that converts coulda code into plain text, then devs will always have a way to have a coulda product that can be communicated with customers.</p><p>I am curious to hear @Jeremy's question answered: who let's their customers write acceptance tests?  Do you really teach your customers to program in your Gherkin DSL?  Because, really, it *is* "call-by-regexp", invoking blocks of code by regexp.</p><p>If Rich Kilmer can teach bureaucrats in the US Govt to read (if not write) a very simple internal Ruby DSL, I believe that most customers can be taught the same just as easily as they can be taught to "code" in a domain-specific Gherkin.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Aslak Hellesøy</strong> &middot; <time datetime="2009-09-15T18:13:00+00:00">September 15, 2009 at 6:13 pm</time></p>
      <p>@Jeremy: "Which no one seems to actually do"</p><p>You don't know that - you're just saying it.</p><p>I know of several people who work on projects where the business writes Cucumber features. Some completely on their own - some with help from testers or developers.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Aslak Hellesøy</strong> &middot; <time datetime="2009-09-15T18:28:00+00:00">September 15, 2009 at 6:28 pm</time></p>
      <p>That said, Coulda is a very clean. On the abstraction level scale it sits right between Cucumber and RSpec/Shoulda/Test::Unit. I might even try it out myself for smaller projects - if I know no business people will ever get near.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Ryan Bates</strong> &middot; <time datetime="2009-09-15T22:40:00+00:00">September 15, 2009 at 10:40 pm</time></p>
      <p>I find Cucumber stories useful as a developer since it helps me put on the customer hat and not be caught up in the Ruby implementation. Typing in plain text forces me to focus on the external functionality rather than how it works internally.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Evan Light</strong> &middot; <time datetime="2009-09-21T23:03:00+00:00">September 21, 2009 at 11:03 pm</time></p>
      <p>@Ryan: There's virtually no difference between pending Coulda specs and pending Gherkin steps with exception to the inclusion of "do", "end", and the use of "in_order_to", "as_a", and "i_want_to" methods.  Otherwise, you're just typing in Strings.  It's when you go to implement your Givens/Whens/Thens that Coulda becomes a somewhat different beast.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Steve Mohapi-Banks</strong> &middot; <time datetime="2009-09-27T08:05:00+00:00">September 27, 2009 at 8:05 am</time></p>
      <p>We develop plain text Cucumber stories with our business people and they show great aptitude at doing so. Over time we'll definitely move towards them owning those stories.</p><p>However, for developers having I can see some benefit in Coulda and the fact it's all in one place rather than distributed between plain text and step definitions.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Evan Light</strong> &middot; <time datetime="2009-09-30T17:54:00+00:00">September 30, 2009 at 5:54 pm</time></p>
      <p>More information, include tutorials, a mailing list, and IRC channel may be found on this website: <a href="http://coulda.tiggerpalace.com" rel="nofollow">http://coulda.tiggerpalace.com</a></p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
