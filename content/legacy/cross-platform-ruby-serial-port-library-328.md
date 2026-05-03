---
title: Cross-platform Ruby Serial Port Library
date: '2006-12-11'
author: Peter Cooper
author_slug: admin
post_id: 328
slug: cross-platform-ruby-serial-port-library-328
url: "/cross-platform-ruby-serial-port-library-328.html"
categories:
- cool
- miscellaneous
---

{{< rawhtml >}}
<p><img src="/assets/2006/12/arduino.jpg" height="153" width="218" border="1" hspace="4" vspace="4" alt="Arduino"></p>
<p>After reading <a href="http://www.urbanhonking.com/ideasfordozens/archives/2006/12/getting_compute.html">this interesting post</a> about using Ruby and a microcontroller for homebrew electronics projects, I discovered <a href="http://ruby-serialport.rubyforge.org/">Ruby/SerialPort</a>. It's a Ruby library that works on Windows, Linux, BSD, OS X, and other POSIX operating systems. It's reasonably old, but as demonstrated in the first link, works on OS X pretty well even now in 2006. There's some <a href="http://www.computerkraft.com/wiki/index.php?title=Ruby/serial_demo">code demonstrating its use here</a>.</p>
<p>Using Ruby/SerialPort and <a href="http://www.arduino.cc/">Arduino</a>, an open-source physical computing platform (basically a microcontroller with a standardized serial interface, it seems), it's pretty easy to <a href="http://www.urbanhonking.com/ideasfordozens/archives/2006/12/getting_compute.html">connect Ruby to electronics circuits</a>. Tied up with a nice LED display or mini text display, this could become a cute tool for building desktop display devices for showing RSS, weather, etc. Perhaps using these tools you could become the next <a href="http://www.artlebedev.com/">Art Lebedev</a>?</p>
{{< /rawhtml >}}

{{< rawhtml >}}
<section class="comments">
  <h3>Comments</h3>
  <ol>
    <li>
      <p class="comment-meta"><strong>topfunky</strong> &middot; <time datetime="2006-12-11T16:53:00+00:00">December 11, 2006 at 4:53 pm</time></p>
      <p>I was looking at gumstix the other day which can run a full Ruby interpreter on it and also has options for wifi, GPS, and other hardware interfaces.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2006-12-11T17:00:00+00:00">December 11, 2006 at 5:00 pm</time></p>
      <p>Found it, looks interesting! <a href="http://www.gumstix.com/" rel="nofollow">Gumstix</a> (for others).</p><p>BTW, got your mail a few days ago, but want to dig around Rubinius before I post anything about it.. it's pretty intriguing stuff :) Want to decide if it's something I want to support, so gotta do some research first.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Thomas</strong> &middot; <time datetime="2006-12-11T19:49:00+00:00">December 11, 2006 at 7:49 pm</time></p>
      <p>Not to be too pedantic or anything, but he actually doesn't mention PICs in there, only the Arduino (which uses the Atmel AVR ATmega8 or ATmega168, depending on the particulars). I'm actually hoping to do some PIC+Ruby hacking in the near future. Of course, a microcontroller that could actually *run* Ruby would be even better, but that takes a bit more memory than these things have. The Gumstix, as mentioned, is one possibility, though NSLU2 is another option: <a href="http://www.nslu2-linux.org/" rel="nofollow">http://www.nslu2-linux.org/</a>.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Peter Cooper</strong> &middot; <time datetime="2006-12-11T19:51:00+00:00">December 11, 2006 at 7:51 pm</time></p>
      <p>I've tweaked it :) I tend to equate PICs and microcontrollers, but have cleared it up.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Tony Buser</strong> &middot; <time datetime="2006-12-11T21:12:00+00:00">December 11, 2006 at 9:12 pm</time></p>
      <p>I use ruby-serial port to control LEGO Mindstorms NXT (via bluetooth serial port connection, until the ruby bluetooth gem gets updated to work on OSX): <a href="http://rubyforge.org/projects/ruby-nxt/" rel="nofollow">http://rubyforge.org/projects/ruby-nxt/</a></p><p>I just wish ruby-serialport was available as a gem and that it was easier to install on windows.  The best I could do on windows was to compile it using cygwin.</p>
    </li>
      <li>
      <p class="comment-meta"><strong>David Roberts</strong> &middot; <time datetime="2006-12-12T11:19:00+00:00">December 12, 2006 at 11:19 am</time></p>
      <p>NOT cross-platform, but a second arrow in the quiver for Windows-only is win32serial - see <a href="http://raa.ruby-lang.org/project/win32serial/" rel="nofollow">http://raa.ruby-lang.org/project/win32serial/</a></p><p>This too needs building from source - and I don't remember how I did it as I don't usually have c program development tools on my windows machines. I know I got it to work, and used it to get data out of a Mastech MAS-343, a multimeter that has an rs232 serial port.</p><p>I generically echo Tony's wish - I wish serial port support was available as a gem for mswin32... it could be either of these two, or something else...</p>
    </li>
      <li>
      <p class="comment-meta"><strong>Derek Hans</strong> &middot; <time datetime="2006-12-18T01:36:00+00:00">December 18, 2006 at 1:36 am</time></p>
      <p>Based on some posts on the ruby mailing list and the Microsoft docs, I threw together a library that uses the win32API for serial communication on Windows, so no compilation needed.  The code still has some issues, specifically setting the serial port speed doesn't work properly, though if you start hyperterm beforehand with the correct settings, it'll initialize it properly for you.</p><p>module Serial</p><p>	require 'Win32API'<br>
	require 'thread'</p><p>	# Windows constants.<br>
	GENERIC_READ         = 0x80000000<br>
	GENERIC_WRITE        = 0x40000000<br>
	OPEN_EXISTING        = 0x00000003<br>
	FILE_FLAG_OVERLAPPED = 0x40000000<br>
	NULL                 = 0x00000000<br>
	EV_RXCHAR            = 0x0001</p><p>	# Windows system error codes<br>
	ERROR_IO_PENDING     = 997</p><p>	class Port<br>
		def initialize(port="com1",baud=9600)<br>
			@port = port<br>
			@run = true<br>
			@read_buffer = ""<br>
			@mutex = Mutex.new</p><p>			# Create objects to access Windows file system API.<br>
			@CreateFile          = Win32API.new("Kernel32", "CreateFile", "PLLLLLL", "L")<br>
			@CloseHandle         = Win32API.new("Kernel32","CloseHandle", "L", "N")<br>
			@ReadFile            = Win32API.new('Kernel32','ReadFile','LPLPP','I')<br>
			@WriteFile           = Win32API.new('Kernel32','WriteFile','LPLPP','I')<br>
			@SetCommState        = Win32API.new("Kernel32","SetCommState","LP","N")<br>
			@SetCommTimeouts     = Win32API.new("Kernel32","SetCommTimeouts","LP","N")<br>
			@GetLastError        = Win32API.new("Kernel32","GetLastError", "V", "N")<br>
			@GetCommState        = Win32API.new("Kernel32","GetCommState", "LP", "N")<br>
			@GetOverlappedResult = Win32API.new('Kernel32','GetOverlappedResult', 'LPPI', 'I')<br>
			@CreateEvent         = Win32API.new("Kernel32","CreateEvent", "LLLP", "L")<br>
			@WaitCommEvent       = Win32API.new("Kernel32","WaitCommEvent", "LPP", "I")<br>
			@SetCommMask         = Win32API.new("Kernel32","SetCommMask", "LL", "I")</p><p>			# Get a file handle<br>
			@hFile = @CreateFile.Call(port, GENERIC_READ|GENERIC_WRITE, 0,NULL,OPEN_EXISTING,FILE_FLAG_OVERLAPPED,NULL)</p><p>			# Create and populate overlapped structures<br>
			hEvent_write = @CreateEvent.Call(0,0,0,0);<br>
			@overlapped_write = [0,0,0,0,hEvent_write].pack("L*")</p><p>			hEvent_read = @CreateEvent.Call(0,0,0,0);<br>
			@overlapped_read = [0,0,0,0,hEvent_read].pack("L*")</p><p>			#set_speed baud<br>
			set_timeouts(2,1,1,0,0)</p><p>		end<br>
		def port<br>
			@port<br>
		end<br>
		def report<br>
			puts "GetLastError = #{@GetLastError.Call}"<br>
		end</p><p>		#this is currently badly screwing up the connection - I don't know why<br>
		def set_speed(speed)<br>
			dcb = ""*80<br>
			@GetCommState.Call(@hFile, dcb)<br>
			dcb_unpacked = dcb.unpack("L2B4B2B6B2BB17S3C8S")<br>
			dcb_unpacked[1] = speed<br>
			dcb = dcb_unpacked.pack("L2B4B2B6B2BB17S3C8S")<br>
			@SetCommState.Call(@hFile, dcb)</p><p>		end</p><p>		def set_timeouts(a=0,b=0,c=0,d=0,e=0)<br>
			commTimeouts = [a,b,c,d,e].pack("L*") #hm - should actually look up what a,b,c,d,e are<br>
			@SetCommTimeouts.Call(@hFile, commTimeouts)<br>
		end</p><p>		def write(data)<br>
			numwritten = ""*4<br>
			#puts "Serial write:" + data + ":"<br>
			if (@GetOverlappedResult.Call(@hFile,@overlapped_write,numwritten,1)==0)<br>
			   puts "Write Error"<br>
			else<br>
			   @WriteFile.Call(@hFile,data,data.size,numwritten,@overlapped_write)<br>
			end</p><p>		end</p><p>		def listen(proc = nil ) #empty proc - assumes that the read method will be used instead of the proc<br>
			thread = Thread.new {<br>
			count = 0<br>
#=begin</p><p>				while (@run)<br>
					inbuff = ""*128<br>
					numread = ""*4<br>
					if (@ReadFile.Call(@hFile,inbuff,inbuff.size,numread,@overlapped_read)==0)<br>
						if (@GetLastError.Call() == ERROR_IO_PENDING)<br>
							if (@GetOverlappedResult.Call(@hFile,@overlapped_read,numread,1)==0)<br>
								puts "GetOverlappedResult failed"<br>
								break<br>
							end<br>
						end<br>
					else<br>
						puts "Readfile failed"<br>
						#break<br>
					end<br>
					#puts ":" + inbuff.sub(/*\z/,"")  + ":"<br>
					#puts "numread:" + numread.to_s<br>
					numchar = numread.unpack("L")[0]<br>
					#puts "numchar:" + numchar.to_s</p><p>					if (numchar &gt; 0)<br>
						#puts inbuff[0..numchar-1]<br>
						#inbuff.sub!(/*\z/,"") #getting rid of the trailing 's<br>
						#puts "Serial read:" + inbuff + ":"<br>
						if proc == nil<br>
							@read_buffer</p>
    </li>
  </ol>
</section>
{{< /rawhtml >}}
