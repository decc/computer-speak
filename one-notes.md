Notes for discussion 1
======================

To cover: REPL -- values -- expressions -- variables and definitions. Values:
numeric, string, boolean (others?). Expressions: arithmetic, functions.

Things to do beforehand
-----------------------

There are two components to each language:

1.  a program which _implements_ the language: it takes your instructions and
	carries them out; and
	
2.  another program which makes it convenient to talk to the first program.

This second program is sometimes called an "Integrated Development Environment",
or possibly a "front-end". For R the front-end is called "RStudio" and for
Racket it's called "DrRacket". The first thing to do is to get both the language
implementation and the front-end.
	
### Instructions for Racket users

Download and install [Racket][]. Make sure you can run DrRacket. Try out the
exercises below. Read [the prologue to _How to Design Programs_][HtDP_prologue].

### Instructions for R users

Download and install [R][] and [RStudio][]. There is a series of videos showing
you how to do just that at the Coursera course
[Computing for Data Analysis][compdata]. (You will need to sign up for the
course.) Try out the exercises below. Read chapter 1 of [_An Introduction To R_][IntroR]

[R]: http://cran.ma.imperial.ac.uk
[RStudio]: http://www.rstudio.com/ide/download/
[Racket]: http://racket-lang.org/download/
[compdata]: https://class.coursera.org/compdata-002/class
[HtDP_prologue]: http://www.ccs.neu.edu/home/matthias/HtDP2e/part_prologue.html
[IntroR]: http://cran.r-project.org/doc/manuals/r-release/R-intro.html

Things to try beforehand
------------------------

1. What does the acronym "REPL" stand for? (Feel free to use
   [Google](http://www.google.com)!)

2. Try typing the following and pressing return:

    In either R or racket:
	
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
	
	```scheme
	1
	```
	
	```scheme
	(+ 1 2)
	```

	```scheme
	"Hello, World."
	```

3. What is the difference between "syntax" and "semantics"? ([Wikipedia][] may
   be your friend.)

[Wikipedia]: http://www.wikipedia.org

4. Compute the sum of 10, 20 and 30. Multiply 48&thinsp;384 by
   2&thinsp;091. Divide a billion by a thousand. The speed of light is
   3&times;10<sup>8</sup> m/s, it is 93&nbsp;million miles to the sun, and a
   mile is about 8/5&nbsp;km. How long does it take the light from the sun to
   reach the earth?

5. A common problem encountered in Excel is that of splitting up peoples' names
   into their components. Try the following without using a computer.
   
   A _string_ is a sequence of characters, like this: `"Hello, World."`. The
   string is normally written surrounded by quotes, but the quotes are not part
   of the string. (Question: what are the quotes for, then?).
	
7. The computer sees the string more like this: `|H|e|l|l|o|,|
   |W|o|r|l|d|.|`. That is, the computer doesn't know anything about "words" or
   "punctuation"; the string really is just a sequence of characters.

8. Here are some people's names: `"James Geddes"`, `"Fred Blogs"`, `"Titus
   Groan"`. Write down, in English, a very explicit set of instructions for
   splitting these names into two parts: a _first name_ and a _surname_.

9. Follow your instructions (exactly!) on the string `"James Geddes"`, which has
   _two_ spaces between the names. What happens? Rewrite your instructions to
   cope with a variable number of spaces between the names.

10. Follow your instructions on the string `"Geddes, James"`. What happens?
	Rewrite your instructions to cope.

11. Follow your instructions on `"James A. M. Geddes"`. What happens? Rewrite
	your instructions to cope. (You should have a good paragraph or two at this
	point.)

12. Can you write down, in English, a very precise description of exactly what
	strings are correctly split into first and surnames by your method?

13. Think up some names that will "break" the instructions in your method.


To discuss
----------

Explain REPL.

Values.

Expressions.




