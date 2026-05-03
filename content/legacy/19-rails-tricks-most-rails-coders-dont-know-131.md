---
title: 19 Rails Tricks Most Rails Coders Don’t Know
date: '2006-07-08'
author: Peter Cooper
author_slug: admin
post_id: 131
slug: 19-rails-tricks-most-rails-coders-dont-know-131
url: "/19-rails-tricks-most-rails-coders-dont-know-131.html"
categories:
- miscellaneous
- ruby-on-rails
---

{{< rawhtml >}}
<div style="background-color: #ffc; border: 6px solid #ddd; padding: 6px 16px; margin: 16px 0px">
<p style="font-weight: bold; font-size: 1.1em">New to Rails 3? Check out the <a style="text-decoration: underline" href="http://zfer.us/EKm97">Ruby on Rails 3 Tutorial book and screencast.</a></p>
<p style="font-size: 0.9em">A book and screencast series showing you how to develop and deploy industrial-strength Rails apps in a direct, step by step way. The screencast series includes 12 lessons over more than 15 hours! Get the best "over the shoulder" experience of following what a top Rails 3 developer does when building an app today. <a href="http://zfer.us/EKm97">Click here to learn more.</a></p>
</div>
<p><strong style="font-size: 1.1em">Please note that this post is over four years old - it's from 2006! As such, these tips were relevant to Rails 1.2 and this content is woefully out of date. We will be updating it for Rails 3 soon! For now, head to <a href="index.html">the Ruby Inside homepage</a> to find something else to read or check out the <a style="text-decoration: underline" href="http://zfer.us/EKm97">Ruby on Rails 3 Tutorial book and screencast</a> which will bring you up to speed with all things Rails 3.</strong></p>
<p>When looking at my own Rails code and that of the community as a whole, I often see places where certain Rails techniques could have been used, but weren't. As much for my own memory as yours, I thought I'd list down some Rails tricks and tips that can make your application or code more efficient:</p>
<p><strong>Benchmark logic in your controller actions</strong> - It's really easy. Use the benchmark class method available on all your models like this:</p>
<pre><span class="constant">User</span><span class="punct">.</span><span class="ident">benchmark</span><span class="punct">("</span><span class="string">adding and deleting 1000 users</span><span class="punct">")</span> <span class="keyword">do</span>
	<span class="number">1000</span><span class="punct">.</span><span class="ident">times</span> <span class="keyword">do</span>
		<span class="constant">User</span><span class="punct">.</span><span class="ident">create</span><span class="punct">(</span><span class="symbol">:name</span> <span class="punct">=&gt;</span> <span class="punct">'</span><span class="string">something</span><span class="punct">')</span>
		<span class="ident">x</span> <span class="punct">=</span> <span class="constant">User</span><span class="punct">.</span><span class="ident">find_by_name</span><span class="punct">('</span><span class="string">something</span><span class="punct">')</span>
		<span class="ident">x</span><span class="punct">.</span><span class="ident">destroy</span>
	<span class="keyword">end</span>
<span class="keyword">end</span>
</pre>
<p>Of course, your code would be a lot better ;-) The regular SQL logs are not shown when within the benchmark sections. Only the benchmark results are shown.</p>
<p><img src="/assets/2006/07/nested-set.jpg" height="70" width="316" border="1" hspace="4" vspace="4" alt="Nested-Set"><br>
<strong><br>
acts_as_nested_set</strong> - Almost everyone is familiar with acts_as_tree, but <a href="http://api.rubyonrails.org/classes/ActiveRecord/Acts/NestedSet/ClassMethods.html">acts_as_nested_set </a>snuck into Rails quietly. It's much like acts_as_tree, but with the added benefit that you can select all of the children (and their own descendants) of a node with a single query. A <a href="http://api.rubyonrails.org/classes/ActiveRecord/Acts/NestedSet/InstanceMethods.html#M000562">list of the instance methods</a> is available.</p>
<p><strong>Easier collections with to_proc</strong> - Sick of writing things like <em>post.collect { |p| p.title }</em> or <em>post.select { |p| p.activated? }.collect{ |p| p.title}</em> ? A little Ruby hackery that allows you to convert symbols into proc references makes it easy. You can write <em>post.collect(&amp;:title)</em> or <em>post.select(&amp;:activated?).collect(&amp;:title)</em> instead! Learn <a href="http://blogs.pragprog.com/cgi-bin/pragdave.cgi/Tech/Ruby/ToProc.rdoc">a lot more about this</a>.</p>
<p><strong>Convert arrays to sentences in views</strong> - If you were collecting a bunch of names to be shown in a view, you might end up with an array like <em>['Peter', 'Fred', 'Chris']</em>, and joining these with commas and inserting 'and' before the final one is a common pain. Not so, if you use the array method <em><a href="http://api.rubyonrails.org/classes/ActiveSupport/CoreExtensions/Array/Conversions.html#M000274">to_sentence</a></em> as provided in Rails. <em>names.to_sentence</em> would return Peter, Fred, and Chris.</p>
<p><strong>Send files back to the user</strong> - Usually, static files can be retrieved by using the direct URL and circumventing your Rails application. In some situations, however, it can be useful to hide the true location of files, particularly if you're sending something of value (e-books, for example). It may be essential to only send files to logged in users too. <a href="http://api.rubyonrails.org/classes/ActionController/Streaming.html#M000072">send_file</a> makes it possible. It sends files in 4096 byte chunks, so even large files can be sent without slowing the system down.</p>
<p><strong>Iterating through page elements with RJS</strong> - Changing page elements with RJS is easy, but what if you don't know <em>exactly</em> which elements you want to change, and would instead prefer to address them with CSS queries? You can with <a href="http://api.rubyonrails.org/classes/ActionView/Helpers/PrototypeHelper/JavaScriptGenerator/GeneratorMethods.html#M000430">RJS's select method</a>. For example: <em>page.select('#items li').each { |item| item.hide }</em> . Powerful stuff!</p>
<p><strong>Check for existence</strong> - When doing a Model.find(id), an exception can be returned if the item with an id of 'id' doesn't exist. If you want to avoid this, use Model.<a href="http://api.rubyonrails.org/classes/ActiveRecord/Base.html#M000862">exists?</a>(id) first to get a true or false for whether that item exists or not.</p>
<p><strong>Number helpers for common number tasks</strong> - All of <a href="http://api.rubyonrails.org/classes/ActionView/Helpers/NumberHelper.html#M000450">these number helpers</a> aren't commonly used but provide great shortcuts: <em>number_to_currency(1234567.948)  # =&gt; $1,234,567.95</em> or <em>human_size(1234567890) # =&gt; 1.1GB</em> or <em>number_with_delimiter(999999999) # =&gt; 999,999,999</em>. There are others.</p>
<p><strong>Testing different route configurations easily</strong> - <a href="http://api.rubyonrails.org/classes/ActionController/TestProcess.html#M000061">with_routing</a> is a test helper that allows you to temporarily override the default 'routes' in routes.rb for test purposes. Demonstration:</p>
<pre><span class="ident">with_routing</span> <span class="keyword">do</span> <span class="punct">|</span><span class="ident">set</span><span class="punct">|</span>
  <span class="ident">set</span><span class="punct">.</span><span class="ident">draw</span> <span class="punct">{</span> <span class="ident">set</span><span class="punct">.</span><span class="ident">connect</span> <span class="punct">'</span><span class="string">:controller/:id/:action</span><span class="punct">'</span> <span class="punct">}</span>
  <span class="ident">assert_equal</span><span class="punct">(</span>
     <span class="punct">['</span><span class="string">/content/10/show</span><span class="punct">',</span> <span class="punct">{}],</span>
     <span class="ident">set</span><span class="punct">.</span><span class="ident">generate</span><span class="punct">(</span><span class="symbol">:controller</span> <span class="punct">=&gt;</span> <span class="punct">'</span><span class="string">content</span><span class="punct">',</span> <span class="symbol">:id</span> <span class="punct">=&gt;</span> <span class="number">10</span><span class="punct">,</span> <span class="symbol">:action</span> <span class="punct">=&gt;</span> <span class="punct">'</span><span class="string">show</span><span class="punct">')</span>
  <span class="punct">)</span>
<span class="keyword">end</span>
</pre>
<p>You can <a href="http://www.josephmoore.net/2006/05/making-unit-testable-environment.html">learn a little more</a> here.</p>
<p><strong>Get lots of info about requests</strong> - Checking <em>request.post?</em> and <em>request.xhr?</em> are popular ways to look for POST and AJAX requests, but some of the <a href="http://api.rubyonrails.org/classes/ActionController/AbstractRequest.html">other </a><em><a href="http://api.rubyonrails.org/classes/ActionController/AbstractRequest.html">request</a></em><a href="http://api.rubyonrails.org/classes/ActionController/AbstractRequest.html"> methods</a> are lesser used. For example: <em>request.subdomains</em> can return an array of subdomains that you could use as part of your authentication scheme, <em>request.request_uri</em> returns the full local request URL, <em>request.host</em> returns the full hostname, <em>request.method</em> returns the HTTP method as a lowercase symbol, and <em>request.ssl? </em>returns true if it's an HTTPS / SSL request.</p>
<p><strong>Improving session performance even more than with ActiveRecord</strong> - By default, Rails stores sessions on the local file system. Many users change this to using ActiveRecordStore to store sessions in the database. An even faster alternative is to use Memcached to store sessions, but that takes a lot to set up (and isn't available unless you run your own servers, etc). But you can get faster than ActiveRecordStore by using Stefan Kaes' <a href="http://railsexpress.de/blog/articles/2005/12/19/roll-your-own-sql-session-store">SQLSessionStore</a>. It circumvents the inefficiencies of ActiveRecordStore using his own direct SQL technique to store sessions.</p>
<p><strong>Caching unchanging data at application startup</strong> - If you have data that doesn't change between application restarts, cache it in a constant somewhere. For example, you might have a YAML or XML file in <em>/config</em> that stores application configuration data, and you could load it into a constant in <em>environment.rb</em>, making lookups quick and easy application-wide.</p>
<p><strong>Check your views are rendering valid HTML / XHTML</strong> - It's not for everyone, but if your output validates as correct HTML / XHTML, it's a sign your views are going to render properly. Scott Raymond has developed <a href="http://railstips.org/articles/2006/06/23/assert-valid-markup">a assert_valid_markup test helper</a> that you can use from your functional tests.</p>
<p><strong>Cleaner HTML output testing</strong> - Combine why's <a href="http://redhanded.hobix.com/inspect/okayGiveHpricot02AGo.html">Hpricot</a> HTML parser and a special test extension, and <a href="http://www.lukeredpath.co.uk/index.php/2006/07/07/testing-your-rails-views-with-hpricot/">you can have powerful tests like so</a>: <em>assert_equal "My title", tag('title')</em> or <em>assert element('body').should_contain('something')</em>. This might be ideal for developing tests to test user built templates. In any case, it's nicer than assert_tag!</p>
<p><strong>Run long-running tasks separately in the background</strong> - <a href="http://backgroundrb.rubyforge.org/">BackgrounDRb</a> is a small framework, by Ezra Zygmuntowicz, that runs as a daemon in the background that can accept tasks your Rails application sends to it, and whose execution is totally separate to your Rails app. It's extremely powerful, and useful for many tasks such as sending hundreds of e-mails, fetching URLs, and other things you don't want to slow down the request times for your main app. One great demo is to develop a task that increments a variable by 1 and sleeps for 1 second. You can then make a Rails method that queries the variable, and see the distinct separation. <a href="http://brainspl.at/articles/2006/07/02/backgroundrb-updated">Learn more</a>.</p>
<p><strong>Make ids in URLs more user friendly</strong> - Override the <em>to_param</em> method on your model and return something like <em>"#{id}-#{title.gsub(/[^a-z0-9]+/i, '-')}"</em> to get URLs like so: <em>http://yoursite.com/posts/show/123-post-title-goes-here</em> .. Much nicer for users, and you don't need to change anything with <em>Post.find(params[:id])</em> as the non numeric characters will be stripped automagically! Get <a href="http://www.notsostupid.com/blog/2006/07/07/urls-on-rails/">a full explanation here</a>.</p>
<p><strong>Separate out slices of functionality into Engines</strong> - Everyone's heard of Rails' plugins, but pitifully few are using <a href="http://rails-engines.org/">Rails Engines</a>! Rails Engines are like plugins on steroids. They can contain their own models, controllers, and views, and integrate with any applications you run them under. This allows you to split out common fragments of functionality (login, user management, content management, etc.) into separate 'engines' to use in your different projects within minutes. No more writing dull login code! Rails Engines is a big deal, but it should be a far bigger deal.</p>
<p><strong>Calculations</strong> - Do you want to get maximums, minimums, averages, or sums for data in your tables? ActiveRecord's <a href="http://api.rubyonrails.org/classes/ActiveRecord/Calculations/ClassMethods.html">Calculations</a> make these all possible. <em>Person.average('age'), Person.maximum(:age, :group =&gt; 'last_name'), </em>and <em>Order.sum('total')</em> all become a reality. Most can be customized pretty deeply with extra options, so go read about them if they're not already part of your code.</p>
<p><strong>XML or YAML output of your data</strong> - It's not necessarily to create a Builder .rxml template for all XML output. ActiveRecord has a <a href="http://api.rubyonrails.org/classes/ActiveRecord/Base.html#M000934">to_xml method</a> that will output the object or result set in XML format. It works with simple objects, to complete tables (like <em>User.find(:all).to_xml</em>). Using includes works too, as with <em>Post.find(:all, :include =&gt; [:comments]).to_xml</em>. YAML is also supported, by using <em>to_yaml</em> instead.</p>
<p><!-- technorati tags start -->
</p>
<p style="text-align:right;font-size:10px;">Technorati Tags: <a href="http://www.technorati.com/tag/rails" rel="tag">rails</a>, <a href="http://www.technorati.com/tag/rubyonrails" rel="tag">rubyonrails</a></p>
<p><!-- technorati tags end --></p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Oliver</strong> &middot; <time datetime="2006-07-08T19:00:00+00:00">July 8, 2006 at 7:00 pm</time></p>
      <p>A really, really good post! Thank you.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>David</strong> &middot; <time datetime="2006-07-08T19:44:00+00:00">July 8, 2006 at 7:44 pm</time></p>
      <p>Great article. Your blog is really useful and I always look forward to new entries. Keep up the great work!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>mike</strong> &middot; <time datetime="2006-07-08T21:18:00+00:00">July 8, 2006 at 9:18 pm</time></p>
      <p>Awesome.  Thanks so much.  This article was really helpful.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Ryan Allen</strong> &middot; <time datetime="2006-07-09T01:47:00+00:00">July 9, 2006 at 1:47 am</time></p>
      <p>Interesting post, I'm going to have to look into this acts_as_nested_set thing. I use acts_as_tree all the time (especially in conjucntion with acts_as_list) and a lot of the time I'm traversing up and down, gah! Expensive.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Kevin Marsh</strong> &middot; <time datetime="2006-07-09T02:11:00+00:00">July 9, 2006 at 2:11 am</time></p>
      <p>Great article, especially liked .to_sentence, which I seemed to have forgotten about.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>(unknown)</strong> &middot; <time></time></p>
      <p>Pingback: <a href="http://infohatter.com/blog/19-rails-tricks-most-rails-coders-dont-know/" rel="external nofollow" class="url">InfoHatter Blog!</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Brandon Keepers</strong> &middot; <time datetime="2006-07-09T14:18:00+00:00">July 9, 2006 at 2:18 pm</time></p>
      <p>Re: Check for existence</p><p>Using the dynamic find_by_id also avoids an exception being thrown, and doesn't produce 2 database queries like Model.exists?(id) does.</p><p>Model.find_by_id(id)  # returns object or nil</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Michael</strong> &middot; <time datetime="2006-07-09T15:48:00+00:00">July 9, 2006 at 3:48 pm</time></p>
      <p>Excellent info!</p><p>Please, for the love of all that's holy, drop the full text justification.  When WYSIWYG first came out, it was kind of interesting, but we're a bit past that now.  And truly, it looks like crap unless you can do full kerning and proper typography.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>John Koetsier</strong> &middot; <time datetime="2006-07-09T16:06:00+00:00">July 9, 2006 at 4:06 pm</time></p>
      <p>Great tips ... my first reaction was: someone oughtta write a book: Rails cookbook or something like that with these and other tips.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jason Morrison</strong> &middot; <time datetime="2006-07-09T16:13:00+00:00">July 9, 2006 at 4:13 pm</time></p>
      <p>Great article, and thanks for the tips!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>andrew taylor</strong> &middot; <time datetime="2006-07-09T19:22:00+00:00">July 9, 2006 at 7:22 pm</time></p>
      <p>To work around the problem of Model.find(id) throwing an exception for invalid id's, I prefer to use the dynamic method Model.find_by_id(id).  All of the "find_by" dynamic methods return nil instead of throwing exceptions.  This is easiers than doing a combo of Model.exists and Model.find.</p><p>Another thing I like is having a method like this for each model...</p><p>  def self.get(it)</p><p>    it = User.find(it) if it.is_a?(Integer)<br>
    it = User.find_by_username(it) if it.is_a?(String)<br>
    return it if it.is_a?(User)<br>
    return nil</p><p>  end</p><p>Sometime I have helper methods for Models, and in the quest fo have a general purpose interface, would like to be able to take either an id or a model instance or some key string as a parameter, this simple method addition makes it possible.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2006-07-09T21:10:00+00:00">July 9, 2006 at 9:10 pm</time></p>
      <p>Michael: You talk, I listen. Full width justification is now off. It wasn't something I really noticed, and I don't have major opinions either way, but off is default, and defaults are good :)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2006-07-09T21:11:00+00:00">July 9, 2006 at 9:11 pm</time></p>
      <p>John: Rails Recipes presents a bundle of 'recipes' for Rails, although most are not in this vein. I agree a collection of, say, 100-250 smaller tips and tricks might be a great read though rather than the 'bigger picture' things Rails Recipes looks at.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Oleg Andreev</strong> &middot; <time datetime="2006-07-10T20:54:00+00:00">July 10, 2006 at 8:54 pm</time></p>
      <p>Guys, I don't want to seem boring, but it's very sadly to read discussion of the new-wave-XXI-century-technology (it's great, really) with such words as "great", "awesome" and so on without even mentioning just one little silly fact: .to_sentence and NumberHelper should be based on locale settings (fr, es, en, de, ru, it, en-us, en-uk, fr-ca etc.)<br>
You know, ["a","b","c"].to_sentence == "a, b et c" (in french) == "a, b y c" (in spanish) == "a, b и c" (in russian; luckily smart WordPress uses utf-8) and so on.<br>
Numbers in russian are delimited with spaces, not commas; and OF COURSE currency may be different in the same language (what about english pounds?)</p><p>And again, it's not very bad that such modules are so simple (i.e. stupid). The problem is, you don't understand it :(</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jeremy Voorhis</strong> &middot; <time datetime="2006-07-11T00:52:00+00:00">July 11, 2006 at 12:52 am</time></p>
      <p>Oleg,</p><p>I appreciate your concern, and would like to point you to the Globalize project. Globalize is a Rails plugin that provides internationalization services for Ruby on Rails applications. I'm not sure if we've tackled #to_sentence yet, but you're welcome to help us play catch-up!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Paul O'Shannessy</strong> &middot; <time datetime="2006-07-11T04:12:00+00:00">July 11, 2006 at 4:12 am</time></p>
      <p>Oleg: I do agree with you about locale settings, which has been a major topic of contention with Rails.  It seems to have been written with English in mind.  A project called <a href="http://www.globalize-rails.org" rel="nofollow">Globalize</a> is attempting to do exactly what you are saying - determine how to output things based on locale settings.</p><p>Keep in mind also, with number_to_currency you can override the default of using $ and can instead use the £ sign, and you can delimit the numbers differently.  The same goes for a lot of the helpers - defaults are pretty easily overridden.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>ravi</strong> &middot; <time datetime="2006-07-17T07:31:00+00:00">July 17, 2006 at 7:31 am</time></p>
      <p>its really fine 19 tips,but currently i am getting problem like when i registred session in any method and not be able to fetch the value of that variable in any other method in same controller.<br>
session registration---------------<br>
session[:scheme_type]=nil<br>
 session[:scheme_type] = @scheme_type<br>
value fetching----------------<br>
@scheme_type= session[:scheme_type]<br>
render_text @scheme_type</p><p>is not working.is i am right on syntax?or any help please.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Matt Thompson</strong> &middot; <time datetime="2006-07-20T08:04:00+00:00">July 20, 2006 at 8:04 am</time></p>
      <p>@ravi</p><p>I can't be exactly sure as to why that wouldn't work, but if I may offer a few suggestions:</p><p>First off, the initializing session[:scheme_type] to nil is unnecessary for most practical purposes, so try taking that out.</p><p>One thing that does stick out is the fact that you initialize session[:scheme_type] to @scheme_type in assignment, but then assign everything vice-versa in the fetching. Try to figure out why you're pulling the session data from the controller in the first place, and post an explaination about what you want to ultimately do, if you want.</p><p>One other nice tip is when testing any variable in a view,  is very useful.</p><p>@Paul</p><p>Fancy seeing you here :)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Tom Mornini</strong> &middot; <time datetime="2006-07-21T02:41:00+00:00">July 21, 2006 at 2:41 am</time></p>
      <p>Cleaner HTML output testing</p><p>There's another plugin called RailsTidy (requires ruby-tidy) that is very nice for this as well, not requiring a net connection.</p><p>It's much faster, and works everywhere. :-)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Oleg Andreev</strong> &middot; <time datetime="2006-07-21T21:41:00+00:00">July 21, 2006 at 9:41 pm</time></p>
      <p>2 Paul O'Shannessy: I can't agree with you about overriding defaults of number_to_currency ad hoc (in the usage place) because such things (sign, delimiters) should be stored in one place (e.g. something like locale.currency.uk, .us, .ru etc.). And it must be strictly prohibited to deviate from it in the actual code, 'cos it breaks whole locales concept!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Ky Le</strong> &middot; <time datetime="2006-08-03T07:06:00+00:00">August 3, 2006 at 7:06 am</time></p>
      <p>I have 2 controller classes: Projects and Documents. I want the Documents.list to list only the documents of a particular project. So, how can I define sessions so that Document always need to know a project's id?<br>
I tried to add "beore_filter: required_project" in the Documents class, but don't know how to write such a method "required_project". Please help.<br>
Thank you in advance.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>(unknown)</strong> &middot; <time></time></p>
      <p>Pingback: <a href="http://www.technovelty.de/?p=418" rel="external nofollow" class="url">TechNovelty</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Paul O'Shannessy</strong> &middot; <time datetime="2006-08-18T23:23:00+00:00">August 18, 2006 at 11:23 pm</time></p>
      <p>I know this is a bit late (I had forgetten I posted here and did a little bit of ego surfing), but...<br>
@Oleg: I do agree with you that something like that should be a locale setting, so perhaps a solution would be to create your own helper, that incorporates locale settings.  Perhaps not an ideal solution, but it would work until something like Globalize really gets a strong hold in the community.<br>
I'm sure we'll see solutions in the near future.<br>
@Matt: Small world :)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>(unknown)</strong> &middot; <time></time></p>
      <p>Pingback: <a href="http://rubyfilter.com/story/127/" rel="external nofollow" class="url">Anonymous</a></p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
