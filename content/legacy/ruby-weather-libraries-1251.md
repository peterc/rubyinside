---
title: 4 Weather Libraries for Ruby and Rails Developers
date: '2008-10-14'
author: Peter Cooper
author_slug: admin
post_id: 1251
slug: ruby-weather-libraries-1251
url: "/ruby-weather-libraries-1251.html"
categories:
- miscellaneous
- reference
---

{{< rawhtml >}}
<p><img src="/assets/2008/10/bit-of-weather.png" width="88" height="89" alt="bit-of-weather.png" style="float:left; margin-right:12px; margin-bottom:12px;"></p>
<p>Want to retrieve weather conditions in your Ruby script / application? There are four great solutions: <a href="http://codewordstudios.com/posts/2-introducing-weatherman-a-ruby-gem">WeatherMan</a>, <a href="http://github.com/ckozus/rweather/tree/master">RWeather</a>, <a href="http://code.google.com/p/rubyweather/">rubyweather</a>, and the <a href="http://yahoo-weather.rubyforge.org/">Yahoo Weather Ruby API</a>.</p>
<h3>RWeather</h3>
<p><a href="http://github.com/ckozus/rweather">RWeather</a>, by Carlos Kozuszko, is a Ruby wrapper for the <a href="http://www.weather.com/services/xmloap.html">Weather XML data feed</a> from The Weather Channel's weather.com. Carlos has put together a <a href="http://www.railslife.com.ar/2008/09/07/rweather-check-your-local-weather-using-ruby/">basic tutorial / overview of the library's use</a>. Currently it has two main features: searching for locations, and then retrieving the current weather for locations of your choice. It's a nice, simple library.</p>
<h3>WeatherMan</h3>
<p><a href="http://codewordstudios.com/posts/2-introducing-weatherman-a-ruby-gem">WeatherMan</a>, by Jared Pace, goes a little deeper than RWeather. Jared wanted to add the ability to retrieve <em>forecasts</em> to RWeather, but upon finding no easy way to integrate it with RWeather's structure, he decided to produce WeatherMan instead (also his first ever gem release!). Jared says:</p>
<blockquote>
<p>WeatherMan implements most of the weather.com XML API. It it based in part on RWeather but adds some functionality and is structured slightly differently. With it you can search for locations, get current conditions and forecasts for a location, and access the promotional links that weather.com asks you to display when using the API.</p>
</blockquote>
<p>WeatherMan requires the installation of the xml-simple gem beforehand, but otherwise generally appears to offer a much wider range of features than RWeather. Jared's <a href="http://codewordstudios.com/posts/2-introducing-weatherman-a-ruby-gem">example code samples</a> are compelling in their power and simplicity.</p>
<h3><span style="font-size: 14px; font-weight: bold;">rubyweather</span></h3>
<p><a href="http://code.google.com/p/rubyweather/">rubyweather</a> is a lot older than WeatherMan but offers some of the same functionality. As with RWeather and WeatherMan, it uses Weather.com's data. Full documentation is available at <a href="http://rubyweather.rubyforge.org/">http://rubyweather.rubyforge.org/</a></p>
<h3>Yahoo! Weather API</h3>
<p>Want to get weather from a source that <em>isn't</em> weather.com (as with the three libraries above)? Yahoo! has an option. <a href="http://yahoo-weather.rubyforge.org/">yahoo-weather</a> provides an object-oriented interface to the <a href="http://developer.yahoo.com/weather">Yahoo! Weather XML RSS feed</a>. You can quickly install with <em>gem install yahoo-weather</em> and the code examples given within <a href="http://yahoo-weather.rubyforge.org/">the official documentation</a> will get you up and running in no time.</p>
<p>I find the simplicity of Yahoo's offering very attractive, and you don't need to be signed up or registered in any way - you can get going in as long as it takes to copy and paste some code!</p>
<p class="s">Post supported by: <strong><a href="http://gearsquare.com/actiongear/">ActionGear</a> is a menu-bar app for task management on your Mac.</strong> It's lightweight, quick, and helps you get stuff done. <strong><a href="http://gearsquare.com/actiongear/">Try it out for free.</a></strong></p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>Matt Didcoe</strong> &middot; <time datetime="2008-10-14T23:06:00+00:00">October 14, 2008 at 11:06 pm</time></p>
      <p>For Australians, there is also the BOMWeather gem that gets it's data from the Bureau of Meteorology system (via Curl).</p><p>You can get it from GitHub here - <a href="http://github.com/benschwarz/bom-weather/tree/master" rel="nofollow">http://github.com/benschwarz/bom-weather/tree/master</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2008-10-14T23:08:00+00:00">October 14, 2008 at 11:08 pm</time></p>
      <p>Thanks for that! I love that when I post roundups like this, there are always things I haven't seen before :)</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jared Pace</strong> &middot; <time datetime="2008-10-15T00:02:00+00:00">October 15, 2008 at 12:02 am</time></p>
      <p>Thanks for the round up. If I would have known about rubyweather earlier I probably wouldn't have built WeatherMan. It was a great learning process though building a gem. I'm surprised I over looked it when I was searching for a gem and that no one mentioned the similarity to rubyweather yet.</p><p>Thanks again.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Carlos Kozuszko</strong> &middot; <time datetime="2008-10-15T02:51:00+00:00">October 15, 2008 at 2:51 am</time></p>
      <p>Thanks for the mention!</p><p>The aim was to build the simplest thing that could work as a gem. I'm glad to know that it was somehow useful to Jared for builing his WeatherMan.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Jim</strong> &middot; <time datetime="2008-10-16T08:55:00+00:00">October 16, 2008 at 8:55 am</time></p>
      <p>Among the four I felt yahoo weather provides a pure Ruby object-oriented interface.</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
