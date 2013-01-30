
Discussion Two
==============

> There are two ways of constructing a software design. One is to make it so
> simple that there are obviously no deficiencies, and the other way is to make
> it so complicated that there are no obvious deficiencies. The first method is
> far more difficult.
>
> — C. A. R. Hoare 


Recap of Discussion One
-----------------------

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

### Making decisions

Finally, for making decisions, we know `if`, which expects three arguments: if
the first is `#f`, the value of the if-expression is the value of the third
argument; otherwise it's the value of the second argument. For example,
```scheme
(if (> T 100) "Steam!" "Water")
```


Some things to try
------------------

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
	characters can occur in identifiers. Minus signs are fine, for example.)
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
	paranthesis around the variable; and the variable is followed by a single
	expression. When defining a *function*, like `patronise-dave`, there are
	parentheses around it, and those are followed by one or more expressions.
	
4.  This function converts from Farenheit to Celsius:

	```scheme
	(define (farenheit->celsius temp)
		(* (/ 5 9) 
		   (- temp 32)))
	```
	
	(Even `>` is allowed in variable names. This kind of name is the Racket
	convention for conversions; for example, there is `number->string`.) Try
	
	```scheme
	(farenheit->celsius 98.6)
	```
	
5.  What do you think is the result of trying the following three expressoins:
	
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
