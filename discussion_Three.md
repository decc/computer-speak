> The Analytical Engine has no pretensions whatever to originate anything. It
> can do whatever we know how to order it to perform.
>
> — *Ada Lovelace* (d. 1872) 

Summary so far
==============

Languages are described by their *grammar* and their *vocabulary*. The grammar
explains what kinds of words there are, and the ways in which they may be
combined to form possible sentences. The vocabulary lists the words
themselves. A computer language is similar, except that the grammar is
rigorously enforced: an expression is either gramatically correct or it isn't;
and, if it isn't, then the computer won't listen to you.

Luckily, computer languages are much simpler than real languages, so much so
that we can explain the grammar using a little diagrammatic technique. 

Grammar: values, expressions, and definitions
---------------------------------------------

So far we have learnt about *values*, *expressions*, and *definitions*. Here's
what we know about values:

    <value> = <number>
      	    | <string>
            | <boolean>

What this says is that a *value* is either a *number*, or a *string*, or a
*boolean*. We write the kind of thing as a word in angle brackets. The "=" sign
means "is" and the vertical bar, "|", separates alternatives. Note that
`<number>` is written in angle brackets too: that's because a number also has a
definition. However, I'm not going to give that definition. A number is
something like `2`, `3.2`, or `-7.2`; a string is something like `"hello"`; and
a boolean is either `#t` or `#f`. That's not the whole truth about numbers and
strings. If you want the whole truth, look in the [Racket Guide][].

[Racket Guide]: http://docs.racket-lang.org/guide/

We also know that there are *expressions*:

	<expr> = <value>
		   | <name>
		   | (<name> <expr> ...)
		   | (if <expr> <expr> <expr>)
		   | (cond [<expr> <expr>] ... [<expr> <expr>])
		   | (cond [<expr> <expr>] ... [else <expr>])
		   | (and <expr> ...)
		   | (or <expr> ...)
		 
This part of the grammar has additional features. A *name* is a sequence of
characters, like `sqrt`, which names something, either a function or a
variable. 

The ellipses (...) mean "zero or more of the preceeding". So for example, the
line that says an expression might be `(<name> <expr> ...)` means that all of
these are valid expressions: `(<name>)`, `(<name> <expr>)`, `(<name> <expr>
<expr>)` and so on.

Some of the terms, for example `and`, are *not* in angle brackets. Those terms
must appear as themselves.

There is something odd about the above explanation. The definition of the
alternatives for `<expr>` includes things with `<expr>` in them. How can
something be defined in terms of itself? The point is that these are
alternatives for `<expr>`, so you are free to include, in one alternative, some
other alternative, just as long as you stop sometime. And *some* of the
alternatives for `<expr>` *don't* involve `<expr>`, so eventually the process stops.

Finally, we know about *definitions*:

	<definition> = (define <name> <expr>)
		         | (define (<name> <variable> ...) <expr>)
			     | (define (<name> <variable> ...) <definition> ... <expr> ... <expr>)
			   
The first form is how constants are defined; the second and third forms are how
functions are defined. Also, I've introduced `<variable>`, which is a named
placeholder for a value. I could have simply written `<name>` (I think), but
that seemed confusing. 

A subtle point about `if` and `cond`
------------------------------------

You might wonder why I haven't mentioned all the functions we have seen, such as
`sqrt`, `string-append`, `+`, and so on. The answer is that they are not part of
the *grammar*, they are part of the *vocabulary*: each of them is just a `<name>`,
and therefore included by the terms above involving the word "name".

In which case, you might well ask why I *have* included things that look like
functions, namely `if` and `cond`. The answer is subtle. Expressions like `(name
expr ...)` are evaluated by first evaluating each `expr`, and then *applying*
the function `name` to the result. However, `(if <expr> <expr> <expr>)` is evaluated
in a different way. The first `<expr>` is evaluated: if it is `#t` (or certain
other values counted as "true"), then the second `<expr>` is evaluated; otherwise
the last `<expr>` is evaluated. The point to note is that only one of the second
and third `<expr>`s is ever evaluated.

Also, I'm lying slightly. It turns out that `cond` is defined in terms of `if`
(I think). But that doesn't matter.


What we don't yet know
======================

There are some things that we don't yet know how to express. Just so you know,
these include:

* Complex and user-defined data types

* Iteration (doing the same thing more than once)

* Recursion (breaking down a problem into similar, but simpler, problems)

* Library functions. Lots of vocabulary including, eg, functions for graphical
  display, reading and writing files, etc.
  
  
