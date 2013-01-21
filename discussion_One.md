
Discussion One
==============

> The Difference Engine can in reality (as has been already partly explained) do
> nothing but add; and any other processes, not excepting those of simple
> subtraction, multiplication and division, can be performed by it only just to
> that extent in which it is possible, by judicious mathematical arrangement and
> artifices, to reduce them to a series of additions.
> 
> — *Ada Lovelace (d. 1852)*


Getting started
---------------

For instructions on getting the software and getting help, see the file
**`README.md`** from the same place as you got this document.


Things to try
-------------
	
One way to begin is just to try out some examples. Here are some to start you
off, plus a few things to think about that don't require a computer.

1. Type the following into DrRacket's "interactions window" and press return, or
   enter them into the "definitions window" and click "run". (If you have no
   idea which window is which, see
   [this explanation][DrRacket interface_essentials]). As you try these, try to
   answer the question, "what just happened?".
   
   [DrRacket interface_essentials]: http://docs.racket-lang.org/drracket/interface-essentials.html

	```scheme
	1
	```

	```scheme
	(+ 1 2)
	```
	
	```scheme
	"Hello, World."
	```
	
	```scheme
	(+ 1 (+ 2 3))
	```
	
	```scheme
	(* 2 3)
	```
	
	```scheme
	(* (+ 1 2) (/ 8 4))
	```
	
	```scheme
	(sqrt 16)
	```
	
	```scheme
	(/ 1 2)
	````
		
	```scheme
	(= 1 2)
	```
	
	```scheme
	(= 2 2)
	```
	
	```scheme
	(> 2 1)
	```
	
	```scheme
	(string-length "Hello, World")
	```
	
	```scheme
	(string-append "Hello" "World")
	```
		
2. What does the acronym "REPL" stand for? (Feel free to use
   [Google](http://www.google.com)!)

[Wikipedia]: http://www.wikipedia.org

3. Compute the sum of 10, 20 and 30. Multiply 48&thinsp;384 by
   2&thinsp;091. Divide a billion by a thousand. The speed of light is
   3&times;10<sup>8</sup> m/s; it is 93&nbsp;million miles from the earth to the
   sun; and a mile is about 8/5&nbsp;km. How long does it take the light from
   the sun to reach the earth?

4. A common problem encountered in Excel is that of splitting up peoples' names
   into their components. Try the following without using a computer.
   
   A _string_ is a sequence of characters, like this: `"Hello, World."`. The
   string is normally written surrounded by quotes, but the quotes are not part
   of the string. (Question: what are the quotes for, then?). The computer sees
   the string more like this: `|H|e|l|l|o|,| |W|o|r|l|d|.|`. That is, the
   computer doesn't know anything about "words" or "punctuation"; the string
   really is just a sequence of characters.

	1. Here are some people's names: `"James Geddes"`, `"Fred Blogs"`, `"Titus
	   Groan"`. Write down, in English, a very explicit set of instructions for
	   splitting these names into two parts: a _first name_ and a _surname_.

	2. Follow your instructions (exactly!) on the string `"Geddes, James"`. What
	   just happened? Rewrite your instructions to cope with names in *either*
	   format.

	3. Follow your instructions on `"James A. M. Geddes"`. What just happened?
	   Rewrite your instructions to cope. (You should have a good paragraph or
	   two at this point.)

	4. Can you write down, in English, a very precise description of exactly
	   what strings are correctly split into first and surnames by your method?

	5. Think up some names that will "break" the instructions in your method.


Notes for the discussion
------------------------

(Please ignore the following.)

To cover: REPL -- values -- expressions -- function application. Variables and
definitions?. Values: numeric, string, boolean (others?). Expressions:
arithmetic, functions.  Explain REPL.

Talking: What is programming? -- what would you get out of learning to program?
(Policy!...)






