---
title: 'Railsbench: Measure the raw speed of Rails applications'
date: '2006-06-24'
author: Peter Cooper
author_slug: admin
post_id: 89
slug: railsbench-measure-the-raw-speed-of-rails-applications-89
url: "/railsbench-measure-the-raw-speed-of-rails-applications-89.html"
categories:
- cool
- enterprise
- ruby-on-rails
- tools
---

{{< rawhtml >}}
<p><a href="http://railsbench.rubyforge.org/">Railsbench</a>, by Stefan Kaes, is a collection of scripts that makes benchmarking a Rails application quick and easy. Rather than benchmark over HTTP, Railsbench tests the 'raw' speed of your application directly, and won't include latencies involved with the network or between your HTTP daemon and Rails. If you love statistics, you'll love Railsbench. Here's some demonstration output:</p>
<pre>perf data file: /d/perfdata/09-15.all.native_routing.txt
    requests=1000, options=-p3 -bm=all -mysql_session -fast_routes

loading environment                0.40159

page request                          total  stddev%     r/s    ms/r
/empty/index                        1.20234   0.4098   831.7    1.20
/welcome/index                      1.33902   0.1074   746.8    1.34
/rezept/index                       1.43960   0.7505   694.6    1.44
/rezept/myknzlpzl                   1.42853   0.2709   700.0    1.43
/rezept/show/713                    3.85798   0.0605   259.2    3.86
/rezept/cat/Hauptspeise             4.43199   0.0389   225.6    4.43
/rezept/cat/Hauptspeise?page=5      4.55130   0.2091   219.7    4.55
/rezept/letter/G                    4.49349   0.0627   222.5    4.49</pre>
<p>It's open source, as usual, so if you want to contribute and make it kick even more butt, please do!</p>
{{< /rawhtml >}}
