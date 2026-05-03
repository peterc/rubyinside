---
title: 'The Rails Underground 2009 Keynotes: Fred George and Yehuda Katz'
date: '2009-07-30'
author: Ric Roberts
author_slug: ricroberts
post_id: 2122
slug: rails-underground-2009-2122
url: "/rails-underground-2009-2122.html"
categories:
- controversy
- events
- miscellaneous
---

{{< rawhtml >}}
<p><img src="/assets/2009/07/railsunder.jpg" style="float:left; margin-right:12px; margin-bottom:12px" alt="rails underground">I attended the <a href="http://www.rails-underground.com/">Rails Underground</a> conference in London at the weekend (July 24-25, 2009).  As always seems to be the case at these events, I got the most value out of the more theoretical and opinion-based talks rather than 'how-to' style presentations.  Having said that, Pat Allan and George Palmer gave great talks on their respective <a href="http://github.com/freelancing-god/thinking-sphinx/tree/master">thinking_sphinx</a> and <a href="http://github.com/georgepalmer/couch_foo/tree/master">couch_foo</a> plugins.</p>
<p>I'm going to concentrate on the keynotes from the two days, which give quite differing perspectives.</p>
<h3>Fred George - Rails is a hammer. Not everything is a nail.</h3>
<p><img src="/assets/2009/07/fredgeorge.gif" style="float:right; margin-left:12px; margin-bottom:12px" alt="fred george">In the keynote (<a href="http://skillsmatter.com/podcast/ajax-ria/fred-george-rails-is-a-hammer-keynote">video link</a>) for the first day, former <a href="http://www.thoughtworks.co.uk/">Thoughtwork</a>er, Fred George warned us against using Rails for the wrong kinds of projects.  He started off by discussing how frameworks like <a href="http://rubyonrails.org/">Rails</a> let you get started quickly but become harder to manage as the complexity of your problem increases.</p>
<p>The rest of the talk consisted of Fred explaining the architecture of a project for which he decided to roll his own framework with only the parts he needed.  Fred explained that he wasn't a fan of using SQL-based traditional relational databases, as it can force your object model into an unnatural form that might not suit your problem domain. Fred's project consisted of a <a href="http://haml.hamptoncatlin.com/">HAML/SASS</a> front-end with <a href="http://www.sinatrarb.com/">Sinatra</a> and pure-Ruby models persisting data to <a href="http://www.yaml.org/">YAML</a> files.  The problem I have with this kind of approach is that by relying on a disparate set of technologies you run the risk of one or more component becoming obsolete over time.</p>
<p>As a couple of people in the audience mentioned afterwards, Fred didn't really give an exhaustive comparison of Rails versus the alternatives, as he was basically just describing one particular application that he'd written. The basic message that I got from the talk was that if your domain model fits well with a relational database structure, then traditional <a href="http://en.wikipedia.org/wiki/Model%E2%80%93view%E2%80%93controller">MVC</a> with Rails is a good fit (e.g. administering users).  However, a service that just exposes the DB structure and its contents isn't adding much value (i.e. REST/CRUD on a set of tables).  To add value you need to design the models intelligently.</p>
<h3>Yehuda Katz - the future is granular</h3>
<p><img src="/assets/2009/07/yehuda.jpg" style="float:right; margin-left:12px; margin-bottom:12px" alt="yehuda"><a href="http://yehudakatz.com/">Yehuda Katz</a> gave the keynote (<a href="http://skillsmatter.com/podcast/ajax-ria/yehuda-katz-interfaces-and-the-future-of-ruby-keynote">video link</a>) for day two, about how Rails is evolving.  Yehuda explained how the <a href="http://www.merbivore.com/">Merb</a> and <a href="http://rubyonrails.org/">Rails</a> core teams have come together to work on Rails 3.0 - a fusion of the best parts of each framework, but with re-imagined internals.  Rails 3.0 isn't going to remove any of what makes Rails great, but it will hopefully be better for 'power users'.  i.e. those developers who care about how the internals work, and take advantage of the concepts therein.</p>
<p>A large portion of the keynote involved an explanation of why interfaces are a good abstraction.  (Not the <a href="http://en.wikipedia.org/wiki/Interface_%28Java%29">Java kind of interface</a>, but the hypothetical kind - i.e. contracts between components). Interfaces give you a calling-convention, allowing you to change internal implementations without affecting the calling code.  Classes and modules take this to the next level: mixing in modules is more powerful than inheritance as it allows your classes to learn new things. As Yehuda put it, "Your parents didn't define all that you can do when you were born. You can learn new things."  With Ruby modules you can swap out small sections of implementations as and when you need them at runtime.</p>
<p>This concept is used to allow the different components of Rails 3.0 to be separated up.  For example, you will no longer be forced to use ActionView - you'll just need something that is "ActionView compliant".  The same applies to ActiveRecord - your models will just need to comply with the ActionModel contract.</p>
<p>Despite what you might think, the contracts for ActionView and ActionModel compliance are actually really simple, and just need a few methods.  If you just want the default behaviour, all you'll need to do is just include an existing module.  By implementing these interfaces you will end up with something that 'just works' with ActionPack, providing you with all the usual form and error helpers.  Furthermore, ActionController::Base will essentially just be ActionController::Metal with a bunch of extra modules included... but you can still use a stripped down version of metal if you don't need all that extra functionality.</p>
<p>So, all of this will result in a much more granular Rails which will allow you to opt in or out of each part if that's what you want.  By just pulling in the parts of Rails you need, you can reduce memory usage and complexity in your apps.  This goes some way to answering Fred George's criticisms of Rails, regarding not being able to just select the parts you need for the job.  And maybe it will unite the Ruby community by allowing people to focus on just one de-facto implementation of each component.</p>
<p>Links to slides and videos for each presentation made at the conference can be found on the <a href="http://www.rails-underground.com/09-conference-schedule.html">schedule page</a> of the Rails Underground site.</p>
<p style="background-color:#ffd;padding:8px;font-family:verdana;font-size:12px"><img src="/assets/2009/07/jslab.png" width="32" height="35" alt="jslab.png" style="float:right; margin-left:12px; border:1px #000000 solid;"><em>Also..</em> <a href="http://jumpstartlab.com" rel="nofollow">Jumpstart Lab</a> is offering workshops teaching <a href="http://rubyjumpstart.com/" rel="nofollow">Ruby for beginning <em>female</em> programmers (<strong>Ruby Jumpstart</strong>)</a> on August 1st and 2nd, then <a href="http://railsjumpstart.com/" rel="nofollow">beginning Rails (<strong>Rails Jumpstart</strong>)</a> for everyone on August 15 &amp; 16. Save 10% with code "rubyinside"!</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Tekin</strong> &middot; <time datetime="2009-07-30T23:06:00+00:00">July 30, 2009 at 11:06 pm</time></p>
      <p>Not to say you missed the point or anything, but for me, one of the main things I took away from Fred's talk was the idea that you should start with a solid object model. This sounds quite old fashioned in this age of 'getting real' and XP, but I think he had a valid point. Rails makes it very easy for you to start coding straight away, and this can sometimes mean you get caught up  in the details of the schema and AR associations, instead of starting with a well deigned object model. It can also be argued that thinking in terms of rails constraints will also constrain your model design, potentially to it's detriment. So when you have a fixed set of requirements, it may make sense to start by fully defining your model first. You may then come to the conclusion that you don't actually really need rails and the whole thing could be a Senatra app with a yaml data store!</p><p>I love writting rails apps, and part of writting a good rails app is making your app fit within the constraints rails defines. Sometimes however, it makes more sense to start thinking outside those constraints before you start coding, as a non-rails solution might just provide a better fit.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Ric Roberts</strong> &middot; <time datetime="2009-07-31T08:05:00+00:00">July 31, 2009 at 8:05 am</time></p>
      <p>Hi Tekin!</p><p>It obviously didn't come across properly in my article, but I totally agree with you about model design - I did mention it a little bit at the end of my section about Fred's talk. :)</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
