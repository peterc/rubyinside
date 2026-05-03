---
title: Rapid OpenGL 3D Development with Ruby and G3DRuby
date: '2006-12-06'
author: Peter Cooper
author_slug: admin
post_id: 320
slug: rapid-opengl-3d-development-with-ruby-and-g3druby-320
url: "/rapid-opengl-3d-development-with-ruby-and-g3druby-320.html"
categories:
- cool
- news
- ruby-tricks
---

{{< rawhtml >}}
<p><img src="/assets/2006/12/glss1.jpg" height="281" width="362" border="1" hspace="4" vspace="4" alt="Glss1"></p>
<p><a href="http://sponeil.org/">Sean O'Neil</a> wrote to me with exciting news:</p>
<blockquote>
<p><a href="http://g3d-ruby.rubyforge.org/">G3DRuby</a> is a Ruby extension for the <a href="http://g3d-cpp.sourceforge.net/">G3D library</a>, which lets you do quick 3D prototyping using advanced OpenGL API features like vertex arrays, framebuffer objects, and OpenGL Shading Language (GLSL) shaders. Version 0.1 does not support all G3D classes, but a few of G3D's C++ demos have been ported to Ruby and tested in both Windows and Linux (Ubuntu 6.10). The source code for G3D and G3DRuby are available under the BSD license.</p>
<p>Along with the 3D graphics features, G3D also provides some binary file handling (textures, MD2 files, BSP trees), collection detection, physics, and a few other things that would be useful for making some fairly decent cross-platform 3D demos/games entirely in Ruby. G3DRuby exposes some C++ array classes so that data can be stored tightly in memory, and so that the data can be accessed very quickly by G3D methods. Because the C++ library and GPU do most of the heavy lifting, all of the Ruby demos run just as fast as the C++ versions (except for the brute-force rendering test, which goes through a Ruby loop about a million times per frame).</p>
</blockquote>
<p>The screenshot at the top of this post is a demonstration of one of the demos. A demo that loads in an MD2 model from Quake, displays it, and provides some basic navigational features takes just 216 lines of Ruby code.</p>
<p>I am still trying to get it working on OS X but Sean provides full installation instructions for Windows and Linux (including a binary release for Windows). There's a very good <em>readme.txt</em> with the library, which you should read as it goes into quite a bit of detail about how it works and how you can write your own OpenGL stuff using this library.</p>
{{< /rawhtml >}}
