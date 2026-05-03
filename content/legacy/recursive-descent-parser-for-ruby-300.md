---
title: Recursive Descent Parser for Ruby
date: '2006-11-13'
author: Peter Cooper
author_slug: admin
post_id: 300
slug: recursive-descent-parser-for-ruby-300
url: "/recursive-descent-parser-for-ruby-300.html"
categories:
- miscellaneous
- ruby-tricks
---

{{< rawhtml >}}
<p>Sometimes strange things happen. I've been developing a small, basic recursive descent parser for Ruby called RDParse. Just before writing this post I decided to Google that name, and lo and behold <a href="http://www.bigbold.com/snippets/posts/show/2190">the first result</a> is a Ruby recursive descent parser called RDParse, created by Dennis Ranke, that <em>I</em> posted to Code Snippets for posterity several months ago. Since both of these libraries are unlikely to be used at once and that Dennis doesn't seem to be maintaining his version, I've decided to stick with RDParse as the name of mine for now.</p>
<p>You can download my RDParse as <a href="/assets/media/rdparser.rb.txt">rdparse.rb.txt</a>, just rename it at your end if you want to use it. To use it, you'd do something like this (no syntax coloring as the Syntax gem doesn't appear to cope with the complexity):</p>
<pre>require 'rdparser'

parser = RDParser.new do |g|
  g.main                'line(s)'
  g.line                'expression separator(?) comment(?)'
  g.comment             '"#" rest_of_line'
  g.rest_of_line        /.+$/
  g.separator           /;/
  g.expression          'term operation expression | term'
  g.term                'number | variable | string | brkt_expression'
  g.brkt_expression     '"(" expression ")"'
  g.number              /d+(.d+)?/
  g.operation           /[+-*/]/
  g.variable            /[a-z][a-z0-9]*/
  g.string              %r(["'](.*?[^\]|.*?)["'])
end

content = %q{
  (34 - 3) * 42;   # Comment here..
  "a" + "bcd"
}

syntax_tree = parser.parse(:main, content)
puts RDParser.text_syntax_tree(syntax_tree)
</pre>
<p>Here, a grammar is defined within the <strong>RDParser.new</strong> block, although it can also be passed in as a parameter in a hash. This grammar (for a nonsense language that can only perform basic expressions) is used to fuel a parser that generates the following syntax tree from the code in the <strong>content</strong> variable:</p>
<pre>line
  expression
    term
      brkt_expression
        "(" =&gt; (
        expression
          term
            number =&gt; 34
          operation =&gt; -
          expression
            term
              number =&gt; 3
        ")" =&gt; )
    operation =&gt; *
    expression
      term
        number =&gt; 42
  separator =&gt; ;
  comment
    "#" =&gt; #
    rest_of_line =&gt; Comment here..
line
  expression
    term
      string =&gt; "a"
    operation =&gt; +
    expression
      term
        string =&gt; "bcd"
</pre>
<p>It's simple but effective. My initial version had callbacks and some other features that I discovered I didn't really need (and which I'd poorly implemented anyway). This version just does the basics, lexing and enough parsing to get a tree.</p>
<p>I'm not releasing it as a Gem or on RubyForge yet as it has a <em>long</em> way to go, but for anyone interested in this stuff, see what grammars you can knock up! Next step.. error reporting.</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>jay</strong> &middot; <time datetime="2006-11-15T10:19:00+00:00">November 15, 2006 at 10:19 am</time></p>
      <p>Could RDParse also benefit from the so-called packrat parsing algorithm in some way?<br>
<a href="http://meta-meta.blogspot.com/2006/04/packrat-parsers.html" rel="nofollow">http://meta-meta.blogspot.com/2006/04/packrat-parsers.html</a></p>
    </li>
      <li>
      <p class="comment-meta"><strong>(unknown)</strong> &middot; <time></time></p>
      <p>Pingback: <a href="treetop-powerful-but-easy-ruby-parser-library-701.html" rel="external nofollow" class="url">Treetop - Powerful But Easy Ruby Parser Library</a></p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
