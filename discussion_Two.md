Discussion Two
==============

> Mathematicians are like Frenchmen: whatever you say to them they translate
> into their own language, and forthwith it is something entirely different. 
>
> — Johann Wolfgang von Goethe

Recap of Discussion One
-----------------------

Learning a programming language is like learning French, only worse, because the
computer won't try to make sensible guesses about what you mean. What you'd
really like to do is order a beer, but the problem is you have to learn how to
pronounce things first. In French, you can probably get away with just knowing
the words for "a beer" and looking apologetically thirsty; but with computers
you can't get away with that sort of sloppiness. So you need to have a small bag
of nouns, verbs, and prepositions first, together with some grammar, before you
can really get going. 

### Names

Discussion One covered: *values*, *expressions*, and *functions*. 

*Values* are the data on which the computer operates, like `1`, `3`, `"Hello"`,
and `#t` (or `true`). Values come in different *types*, such as "number",
"string", and "boolean". (There are other types than these.)

*Expressions* are things evaluated by the computer to give values. Examples are
`(+ 1 2)` and `(string-append "Hello, " "world.")` 

Most expressions we have seen have the form of a *list*, where the first entry in
the list is a *function* and the remaining entries are expressions whose values
are given to the function. For example, `(+ 1 2)` and `(sqrt 36)`. (Incidentally,
the concept of a list will be important later: It is a parenthesised sequence
of things, where the things are separated by spaces. So far, we have seen lists
where the "things" are values, functions, or expressions.) 

### Functions

A *function* is a predefined series of instructions. It is *applied* to a list
of values (called the *arguments*), does something with them, and hands back its
*return value*.

For each type of data, there are lots of functions which operate on that
type. For example, for numerical data we have `+`, `-`, `*` (multiply), `/`
(divide); also `max`, `min`, `quotient`, `remainder`, `sqrt`, `log`, `sin`,
`cos`, and so on. (There's also `pi`.)

Some functions return `#t` or `#f`: for example, `>`, `<`, `<=` and `=`. There
are functions to check what type a value is: `number?`, `string?`, and
`boolean?`

Look in [the Racket Guide](http://docs.racket-lang.org/guide/index.html),
chapter 3, for more on the built-in types and functions that operate on
them. Incidentally, a copy of the Guide should have downloaded along with Racket
and displayed when you ask for help. So you don't need to be connected to the
web to read it. 


### Making decisions

Finally, for making decisions, we know `if`, which expects three arguments: if
the first is `#f`, the value of the if-expression is the value of the third
argument; otherwise it's the value of the second argument. For example,
```scheme
(if (> T 100) "Steam!" "Water")
```


Things to try: Definitions
--------------------------

1.  Figure out how to change the language to "Racket" rather than "Beginning
	Student." (You may have to set an option to "Determine language from
	source", make sure that the first line of the definitions window is `#lang
	Racket`, and click "Run".)

2.  The trick (perhaps *the* trick) with programming is breaking up your problem
	into smaller parts. If necessary, those parts are broken into smaller parts,
	and so on, until one reaches problems that are simple enought to be solved
	directly, or already built in to your chosen language.
	
	*Functions* are the way to do that; writing functions is at the heart of
     programming.
	
	Enter the following in the definitions window and click "run" (or find out
	what the shortcut key is):
	
	```scheme
	(define (patronise-dave s)
		(string-append s ", Dave."))
	```
	
	Note that everything between quotes (`"`) is a single string. That is to
	say, `", Dave"` is a single string, not two things. Anyway, what do you
	think is the result of the following? Try to guess before running it.
	
	```scheme
	(patronise-dave "I wouldn't do that if I were you")
	```
	
	What about this one?
	
	```scheme
	(patronise-dave "I'm afraid I can't do that")
	```
	
	A couple of points. First, in the definition, we made up *two* new
	identifiers: `patronise-dave` and `s`. (Racket is pretty liberal about what
	characters can occur in identifiers. Hyphens are fine, for example.)
	`patronise-dave` was bound to a function; the rest of the definition
	explains to Racket what the function actually does.
	
	Now, `s` is a bit different. When we wrote the definition, there was nothing
	that was the value of `s`. `s` doesn't have a value until we *apply* the
	function, as in the examples above. It's just a placeholder, so we have
	something to refer to when writing the function. It's as if we said, "Please
	define `patronise-dave` to be a function which takes one argument which I
	will, for convenience, call `s`. The function has the following action:
	append the string `", Dave."` to `s`.)
	
	It's just more convenient than saying something like "the first argument"
	everywhere. 
	
3.  We can give names to other values too, which can save typing. Try

	```scheme
	(define current-temp 99.5)
	```
	```scheme
	(* (/ 5 9) (- current-temp 32))
	```
	```scheme
	(if (> current-temp 98.6) "Fever!" "Not a fever")
	```

	Notice that when defining a *variable*, like `current-temp`, there are no
	parentheses around the variable; and the variable is followed by a single
	expression. When defining a *function*, like `patronise-dave`, there are
	parentheses around it, which also contain the arguments to the
	function. 
	
4.  This function converts from Farenheit to Celsius:

	```scheme
	(define (farenheit->celsius temp)
		(* (/ 5 9) 
		   (- temp 32)))
	```
	
	(This kind of name is the Racket convention for conversions; for example,
	there is `number->string`.) 
	
	Remember, Racket ignores indentation and linebreaks: it only looks at the
	parentheses. The indentation is to make the definition more readable to you
	and me. Now try:
		
	```scheme
	(farenheit->celsius 98.6)
	```
	
5.  What do you think is the result of trying the following three expressions:
	
	```scheme
	(define temp 100)
	(farenheit->celsius 32)
	temp
	```
	
	(Type them in the interaction window and press enter after each.)
	
6.  Write `celsius->farenheit` to do the inverse conversion. When you've written
	it, try 

	```scheme
	(celsius->farenheit -40)
	```
	
	Try
	
	```scheme
	(farenheit->celsius (celsius->farenheit 37.5))
	```
	
7.  (Harder). It turns out that there's no such thing as a temperature below
	-273.15 degrees Celsius. Adapt `celsius->farenheit` to signal an error if
	the argument is an unphysical temperature.
	
	You can signal an error with the expression
	
	```scheme
	(error "temperature must be greater than absolute zero")
	```

	Hint: you will need to use `if`.


More things to try
------------------

[tbd]
