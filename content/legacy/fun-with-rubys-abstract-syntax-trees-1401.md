---
title: Fun with Ruby’s Abstract Syntax Trees
date: '2008-12-15'
author: Peter Cooper
author_slug: admin
post_id: 1401
slug: fun-with-rubys-abstract-syntax-trees-1401
url: "/fun-with-rubys-abstract-syntax-trees-1401.html"
categories:
- cool
- elsewhere
---

{{< rawhtml >}}
<p><img src="/assets/2008/12/ast-img.png" width="106" height="108" alt="ast-img.png" style="float:left; margin-right:12px; margin-bottom:12px; border:1px #000000 solid;">Whenever you run a Ruby program, Ruby's parser processes the code and turns it into an "<a href="http://en.wikipedia.org/wiki/Abstract_syntax_tree">abstract syntax tree</a>" (an AST) which can then be either turned into bytecode for YARV (on Ruby 1.9) or be interpreted immediately (as with Ruby 1.8).</p>
<p>While a programming language allows programmers to represent the logic of a program in a way that's both suitable for developers and computers to easily understand, abstract syntax trees act as a low-level tree representation of the program's mechanics. Given that ASTs are typically simple data structures, it's possible to use them to convert one language to another, to semantically analyze what a program is going to do, to detect repetition, or to optimize how the final program will run.</p>
<p>Ilya Grigorik has written <a href="http://www.igvita.com/2008/12/11/ruby-ast-for-fun-and-profit/">Ruby AST for Fun and Profit</a>, a fun blog post where he looks at interacting with Ruby ASTs. He links to some interesting libraries (including the excellent <a href="http://rubyforge.org/projects/parsetree/">Parsetree</a>), a talk by Marc Chung, and his own app, <a href="http://github.com/igrigorik/ruby2lolz/tree/master">Ruby2Lolz</a>, that can convert Ruby into <a href="http://www.lolcode.com/">LOLCODE</a> (a scary and esoteric joke programming language that reads like COBOL on LSD).</p>
{{< /rawhtml >}}
