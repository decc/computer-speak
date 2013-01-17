Notes for discussion 1
======================

To cover: REPL -- values -- expressions -- variables. Values: numeric, string,
boolean (others?). Expressions: arithmetic, functions. 

Things to do beforehand
-----------------------

Download either [R][] and [RStudio][], or [Racket][]. Install it and make sure
you can run it. For `R`, there is a series of videos showing you how to do just
that at the Coursera course [Computing for Data Analysis][compdata]. (You will
need to sign up for the course.)

[R]: http://cran.ma.imperial.ac.uk
[RStudio]: http://www.rstudio.com/ide/download/
[Racket]: http://racket-lang.org/download/
[compdata]: https://class.coursera.org/compdata-002/class

Read [the prologue to _How to Design Programs_][HtDP_prologue].

[HtDP_prologue]: http://www.ccs.neu.edu/home/matthias/HtDP2e/part_prologue.html


Things to try beforehand
------------------------

1. What does the acronym "REPL" stand for? (Feel free to use
   [Google](http://www.google.com)!)

2. Try typing the following and pressing return:

	In R:
	
	```R
	1
	```

	```R
	1 + 2
	```
	
	```R
	"Hello, World."
	```
	
	In Racket:
	
	```racket
	1
	```
	
	```scheme
	(+ 1 2)
	```

	```racket
	"Hello, World."
	```

3. What is the difference between "syntax" and "semantics"? ([Wikipedia][] may be
your friend.)

[Wikipedia]: http://www.wikipedia.org

4. Compute the sum of 1, 2 and 3. Multiply 48384 by 2091. Divide a billion by a
   thousand.

4. A _string_ is a sequence of characters, like this: `"Hello, World."`. The string
   is normally written in quotes, but the quotes are not part of the
   sting. (Question: what are the quotes for, then?).
   
   The computer sees this string more like this: `|H|e|l|l|o|,|
   |W|o|r|l|d|.|`. That is, the computer doesn't know anything about "words" or
   "punctuation"; the string really is a sequence of characters.
   
   Here are some people's names: `"James Geddes"`, `"Fred Blogs"`, `"Titus
   Groan"`. Write down, in English, a very explicit set of instructions for
   splitting these names into two parts: a _first name_ and a _surname_.
   
5. Follow your instructions (exactly!) on the string `"James  Geddes"` (there are
   _two_ spaces between the names). What happens? Rewrite your instructions to
   cope with this and related typos. 
   
6. Follow your instructions on the string `"Geddes, James"`. What happens?
   Rewrite your instructions to cope.
   
7. Follow your instructions on `"James A. M. Geddes"`. What happens? Rewrite
   your instructions to cope. (You should have a good paragraph or two at this point.)


To discuss
----------

Explain REPL.

Values.

Expressions.




