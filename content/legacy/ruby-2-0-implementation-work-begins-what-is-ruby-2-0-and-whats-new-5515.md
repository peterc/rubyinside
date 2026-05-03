---
title: 'Ruby 2.0 Implementation Work Begins: What is Ruby 2.0 and What’s New?'
date: '2011-10-20'
author: Peter Cooper
author_slug: admin
post_id: 5515
slug: ruby-2-0-implementation-work-begins-what-is-ruby-2-0-and-whats-new-5515
url: "/ruby-2-0-implementation-work-begins-what-is-ruby-2-0-and-whats-new-5515.html"
categories:
- news
---

{{< rawhtml >}}
<p><img src="/assets/2011/10/ruby2-0.gif" alt="" title="ruby2-0" width="93" height="111" class="alignnone size-full wp-image-5516" style="float: right; margin-left: 18px; margin-bottom: 18px">Yesterday, Matz made <a href="https://github.com/ruby/ruby/commit/6b8d4ab840b2d76d356ba30dbccfef4f5fd10767">a commit</a> to the MRI Ruby repository <a href="https://github.com/ruby/ruby/commit/6b8d4ab840b2d76d356ba30dbccfef4f5fd10767">bumping the trunk version from 1.9.4 to 2.0.0</a>, marking the start of the work of implementing the long-discussed ideas for Ruby 2.0.</p>
<h3>What is Ruby 2.0?</h3>
<p><strong>Ruby 2.0 is the next major version release of MRI Ruby, the de facto official Ruby implementation.</strong></p>
<p>Ruby 1.9.3 is due out any time soon and Ruby 1.9.4 is under active development (it has moved to a separate branch now that trunk is 2.0.0). We <a href="ruby-1-9-3-introduction-and-changes-5428.html">recently learned</a> that Ruby 2.0 would then follow Ruby 1.9.4.</p>
<h3>Will Ruby 2.0 be a huge leap forward?</h3>
<p>No. While 2.0 will include a number of syntax changes, new features and general improvements, mentioned below, it is anticipated to remain backward compatible with code written for 1.9.3 and Matz has stated that the changes are less significant than those made in the 1.8 to 1.9 jump.</p>
<blockquote class="stylized"><p>The version number goes up to 2.0 but the changes are rather small. Smaller than the ones we made in 1.9.</p></blockquote>
<p><cite>Matz</cite></p>
<p>The discussion surrounding Ruby 2.0's feature set spans back <em>several years</em> (mostly on the <a href="http://blade.nagaokaut.ac.jp/ruby/ruby-talk/index.shtml">ruby-talk</a> and <a href="http://blade.nagaokaut.ac.jp/ruby/ruby-core/index.shtml">ruby-core</a> mailing lists) and 2.0 was initially expected to introduce <em>significant</em> syntax changes and not be backwards compatible. Things have changed with Ruby 1.9 moving into production (it was originally a development only version) and 2.0 being an <em>evolution</em> rather than a <em>revolution.</em></p>
<h3>What will (probably) be new in Ruby 2.0?</h3>
<p>Ruby 2.0 is still not well defined. At the moment, ideas and features are being actively suggested and discussed, but a number have been tipped to make it into Ruby 2.0 at this early stage:</p>
<h4>Keyword Arguments</h4>
<p>In <a href="https://www.youtube.com/watch?v=t9LMOydfc4k">Ruby 2.0: What We Want to Accomplish in the Near Future</a> (recorded in 2010), Matz showed off an example where <code>1.step(20, 2)</code> could become <code>1.step(by: 2, to: 20)</code> with the method definition of <code>def step(by: step, to: limit)</code>.</p>
<p>An implementation of keyword arguments by Yusuke Endoh actually <a href="http://ruby-dev.info/posts/44602">triggered the discussion to move trunk to 2.0.0</a> so this is actively being discussed and implemented.</p>
<h4>Bytecode export/import</h4>
<p>Ruby 1.9 runs on the YARV virtual machine and so will Ruby 2.0, but Ruby 2.0 is expected to make it simple to save pre-compiled Ruby scripts to bytecode representations and to then run these directly. Running pre-compiled bytecode will skip the parsing stage of the standard interpretation process. If you use Rubinius or JRuby you may be familiar with this concept.</p>
<h4>Refinements</h4>
<p>"Refinements" are a construction to make monkey patching safer. Essentially you could "refine" a global class within the context of a specific module so that the monkey patches would only apply in a certain context. Yehuda Katz <a href="http://yehudakatz.com/2010/11/30/ruby-2-0-refinements-in-practice/">wrote an excellent writeup about refinements</a> last year.</p>
<p>Refinements are.. controversial. The performance hit they'd introduce has recently made them less likely to arrive in Ruby 2.0 but I don't believe they're entirely off the table yet. Some form of namespacing of class modifications will probably eventually make it in, however. Another implementation has been called 'traits' and is shown off in the Matz video (linked above).</p>
<h4>Standard libraries becoming gems</h4>
<p>On Twitter today, Aaron 'tenderlove' Patterson of the <a title="Ruby core team" href="http://www.ruby-lang.org/en/community/ruby-core/">Ruby core team</a> said that the Ruby standard library would be 'moved to gems' in Ruby 2.0 although many of these would still be <em>included</em> with the implementation (rather than being an optional extra download).</p>
<h4>And more..</h4>
<p>As I said before, things are a bit up in the air, but the ideas surrounding Ruby 2.0 should begin to settle over the next year.</p>
<p>A couple of weeks ago, Koichi Sasada posted the results of a <a href="http://blade.nagaokaut.ac.jp/cgi-bin/vframe.rb/ruby/ruby-core/39810?39629-40099+split-mode-vertical">Ruby 2.0 feature questionnaire</a> to the ruby-core mailing list and encouraged people to extend it. It's not a list of features that <em>will</em> make it into Ruby 2.0, but an attempt to see what people would <em>like.</em></p>
<p>Koichi's initial list was:</p>
<ul>
<li>Cleanup syntax                          </li>
<li>Bytecode export                         </li>
<li>Symbol GC                               </li>
<li>Remove Proc binding                     </li>
<li>Macros                                  </li>
<li>Getting parse tree                      </li>
<li>Getting source code                     </li>
<li>Cross thread Fiber migration            </li>
<li>Standard Gem                            </li>
<li>Review all standard libraries           </li>
<li>Remove obsolete one standard libraries  </li>
<li>Improve Proc#curry                      </li>
<li>Non-blocking I/O                        </li>
<li>Dtrace                                  </li>
<li>GC API (replaceable GC)                  </li>
</ul>
<p>As Ruby 2.0 development continues, I'm going to regularly summarize what's going on and show off new features here on Ruby Inside, so keep your eyes peeled :-)</p>
<p class="s" style="padding: 8px; background-color: #ffc; color: #333"><em>[ad]</em><a href="http://engine.adzerk.net/redirect/0/6331/7109/1313/d4aa1730de8e4e278016af4aaaa09278/19/24/9459/634546762971927670?keywords=">Gauges</a> is a real time traffic analytics system so you can analyze all your traffic in seconds. Collect and analyze your web traffic for all your sites in real-time using their fast, reliable, hosted system and see overview data for all your sites on a single page. <a href="http://engine.adzerk.net/redirect/0/6331/7109/1313/d4aa1730de8e4e278016af4aaaa09278/19/24/9459/634546762971927670?keywords=">Click here to learn more.</a></p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>ano</strong> &middot; <time datetime="2011-10-20T17:35:00+00:00">October 20, 2011 at 5:35 pm</time></p>
      <p>It's step(limit, step), isn't it? Thus 1.step(20, 2), not 1.step(2, 20).<br>
Your syntax feels so much more natural though</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Guoliang Cao</strong> &middot; <time datetime="2011-10-20T18:42:00+00:00">October 20, 2011 at 6:42 pm</time></p>
      <p>Great!</p><p>I love ruby 1.8 and 1.9. Backward compatibility is very good and won't diminish the momentum Ruby has gained. Good little things add up too.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Alexey Petrushin</strong> &middot; <time datetime="2011-10-20T18:59:00+00:00">October 20, 2011 at 6:59 pm</time></p>
      <p>I miss multiple inheritance.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Torrance</strong> &middot; <time datetime="2011-10-20T21:13:00+00:00">October 20, 2011 at 9:13 pm</time></p>
      <p>Is there any word on performance improvements wrt the YARV virtual machine? Improvements in its garbage collection? etc.?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2011-10-20T22:44:00+00:00">October 20, 2011 at 10:44 pm</time></p>
      <p>@ano: You're right. I've fixed it :-) Thanks!</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Myron Marston</strong> &middot; <time datetime="2011-10-24T18:53:00+00:00">October 24, 2011 at 6:53 pm</time></p>
      <p>Is module prepending (which would remove the need to ever do alias_method_chain) still a possibility?</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Alex Ramirez</strong> &middot; <time datetime="2011-10-27T13:55:00+00:00">October 27, 2011 at 1:55 pm</time></p>
      <p>*Yawn*</p><p>They should make Rubinius the default VM for 2.0.</p><p>I'm so fed up with YARV segfaulting all the time, I guess I'm going to move to Perl or Python.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>dude</strong> &middot; <time datetime="2011-10-27T15:09:00+00:00">October 27, 2011 at 3:09 pm</time></p>
      <p>@Alexey, Good one. I laughed.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Tobias</strong> &middot; <time datetime="2011-10-29T00:43:00+00:00">October 29, 2011 at 12:43 am</time></p>
      <p>I don't feel like Ruby needs many more features; I'd rather see more focus on performance improvements.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>(unknown)</strong> &middot; <time></time></p>
      <p>Pingback: <a href="http://swx.com.br/2011/11/ruby-2-0-planos-do-criador/" rel="external nofollow" class="url">Ruby 2.0: Planos do criador | SWX Softwares - Desenvolvimento e Design Web</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>(unknown)</strong> &middot; <time></time></p>
      <p>Pingback: <a href="the-ruby-standard-library-to-be-converted-to-gems-for-ruby-2-0-5586.html" rel="external nofollow" class="url">The Ruby Standard Library To Be Converted to Gems for Ruby 2.0?</a></p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
