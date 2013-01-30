
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

1.  Figure out how to change the language to "Racket" rather "Beginning
	Student." (You may have to set an option to "Determine language from
	source", make sure that the first line of the definitions window is `#lang
	Racket`, and click "Run".)

2.  The trick (perhaps *the* trick) about programming is breaking up a problem
	into smaller parts. If necessary, those parts are broken into smaller parts,
	and so on, until one reaches problems that are simple enought to be solved
	directly, or already built in to your chosen language.
	
	*Functions* are the way to do that; writing functions is at the heart of
     programming.
	
	Enter the following in the definitions window and click "run" (or find out
	what the shortcut key is -- on a Mac it's CMD-R):
	
	```scheme
	(define (patronise-dave s)
		(string-append s ", Dave."))
	```
	
	What do you think is the result of
	
	```scheme
	(patronise-dave "I wouldn't do that if I were you")
	```
	
	What about
	
	```scheme
	(patronise-dave "I'm afraid I can't do that")
	```
	
	
	
	
	Another way of looking at this is 

Languages start simple and get bigger. 

The following expression adds 2 to whichever of 1 and 0 is greater:

	```scheme
	(if (> 1 0) (+ 2 1) (+ 2 0))
	```

	What does this do?

	```scheme
	(+ 2 (if (> 1 0) 1 0))
	```
	
	Is there any reason to choose one over the other?
	
3.  
	
	
	

