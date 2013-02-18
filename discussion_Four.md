> There are two ways of constructing a software design. One is to make it so
> simple that there are obviously no deficiencies, and the other way is to make
> it so complicated that there are no obvious deficiencies. The first method is
> far more difficult.
>
> — C. A. R. Hoare 

Recap
=====

Last week we wrote a program to compute one's income tax given one's gross
income. It turned out to be surprisingly tricky to convert HMRC's English
instructions into something that was unambiguous and explicit. There's probably
a lesson in there, somewhere.

I've put the program in a file called `income-tax.rkt` in the Examples
directory. If you click on it, you should get a nicely-formatted version. I've
also moved some bits around to make the structure clearer. In particular, for
functions with long arguments which need to be broken over several lines, I've
put the first argument on the same line as the function and lined up the other
arguments underneath the first, like this:

```scheme
(+ 1
   2
   3)
```

Making the program better
-------------------------

We discussed the problem of "magic numbers" -- there are hard-coded, numerical
constants in our program. Worse, the same constant crops up in more than one
place (a mortal sin).

There's another reason you should be a little uncomfortble looking at this code,
and that is that the same *calculation* seems to crop up in more than one
place. For example, we have to compute "20% of something" several times: once
when the gross income is in the 20% tax bracket, and oncee for each of the other
cases to make sure we capture the 20% tax on the whole of that bracket. That
kind of repetition makes programmers itch. They have an urge to rewrite the code
so that a recurring calculation is only written once.


Things to try, which are more fun than income tax
=================================================

Let's draw some pictures.

