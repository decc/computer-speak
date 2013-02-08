
Summary of the "grammar" so far
===============================

We know that there are *values*:

	value = number
	      | string
		  | boolean
		  
That is to say, a *value* is either a *number* or a *string* or a *boolean*. A
number is something like `2`, `3.2`, or `-7.2`; a string is something like `"hello"`;
and a boolean is either `#t` or `#f`.

We also know that there are *expressions*, and we know several ways to make
expressions (again, the vertical bar, "|", separates alternatives):

	expr = value
		 | name
		 | (name expr ...)
		 | (if expr expr expr)
		 | (cond [expr expr] ... [expr expr])
		 | (cond [expr expr] ... [else expr])
		 | (and expr ...)
		 | (or expr ...)
		 
The ellipses (...) means "zero or more of the preceeding". A *name* is a
sequence of characters, like `sqrt`, which names something, either a function or
a variable.

Finally, we know about *definitions*:

	definition = (define name expr)
	           | (define (name variable ...) expr)
			   | (define (name variable ...) definition ... expr expr ...)
			   

You might wonder why I haven't mentioned all the functions we have seen, such as
`sqrt`, `string-append`, `+`, and so on. The answer is that they are not part of
the *grammar*: each of them is just a *name*, and therefore included by the
terms above involving the world "name". In which case, you might well ask why I
*have* included things that look like functions, namely `if` and `cond`. The
answer is subtle. Expressions like `(name expr ...)` are evaluated by first
evaluating each `expr`, and then *applying* the function `name` to the
result. However, 'if' is evaluated in a different way. The first `expr` is
evaluated: if it is `#t` (or certain other values counted as "true"), then the
second `expr` is evaluated; otherwise the last `expr` is evaluated. The point to
note is that only one of the second and third `expr`s is ever evaluated.

