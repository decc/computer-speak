
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

Discussion One covered: values, expressions, and functions. 

*Values* are the data on which the computer operates, like `1`, `3`, `"Hello"`,
and `#t` (or `true`). Values come in different *types*, such as "number",
"string", and "boolean". (There are other types than these.)

*Expressions* are things evaluated by the computer to give values. Examples are
`(+ 1 2)` and `(string-append "Hello, " "world.")` 

Most expressions we have seen have the form of a *list*, where the first entry in
the list is a *function* and the remaining entries are expressions whose values
are given to the function. For example, `(+ 1 2)` and `(sqrt 36)`. Incidentally,
the concept of a list will be important later: It is a parenthesised sequence
of things, where the things are separated by spaces. So far, we have seen lists
where the "things" are values, functions, or expressions. 

A *function* is a predefined series of instructions. It is given a set of values
(called the *arguments*), does something, and hands back its *return
value*. 

There are lots of functions which operate on numerical arguments. Some examples
are `+`, `-`, `*` (multiply), `/` (divide); also `max`, `min`, `quotient`,
`remainder`, `sqrt`, `log`, `sin`, `cos`, and so on. (There's also `pi` for &pi;.)

Some functions return `#t#` or `#f`: `>`, `<`, `=`, for example. There are functions to check
what type a value is: `number?`, `string?`, and `boolean?`

Finally, for making decisions, we know `if`, which expects three arguments: if
the first is `#f`, the value of the if-expression is the value of the third
argument; otherwise it's the value of the second argument. For example,
```scheme
(if (> T 100) "Steam!" "Water")
```


Things to know
--------------

We now know two "syntactical forms". All the expressions we've seen look like
lists. Some, like 
```scheme
(sqrt 16) 
``` 
have a function as the first argument. Racket evaluates these by first
evaluating the remaining elements of the list, then applying the function to
those values.

Secondly, there's the "special form"
```scheme
(define x 2)

in
which the first element



Some things to try
------------------

Start the definitions window with ```#lang Racket```scheme 

[to be continued]
