> The three chief virtues of a programmer are: laziness, impatience, and
> hubris.  
> — *Larry Wall*

The current challenge
=====================

Our programming challenge is to write a program to draw a frequency histogram of
the 2012 half-hourly electricity demand. 

Reading data from a file
------------------------

In the last discussion, we tried to write a program to read in the demand
data. The data, which I got from
[National Grid](http://www.nationalgrid.com/uk/Electricity/Data/Demand+Data/), is
in the file `Data/INDO-2012.csv`.

Here is the program we wrote to get this data. I've tidied it up quite a lot
from the one we wrote in the discussion.

I've also figured out how to test that we've got to the end of the file. It
turns out that if you read a value from the file, for example by

```scheme
(define next-value (read input-port))
```

then the value you read, `next-value` will be a special "End of file" object if you have, in
fact, reached the end of the file. You can test whether `next-value` is an
end-of-file object with `(eof-object? next-value)`. 

However, there's a slight problem. `read` reads the next value from the file,
yes; but the *subsequent* read will read a *subsequent* value. So, if we use
`read` to test for the end of file, we're going to have to save the value it
returns in order to add it to our list.

Fortunately, we already know that the first expressions within a function
definition can themselves be definitions. 

So the function to read in all of the demand data is:

```scheme
(define (read-list-of-values-from-file input-port)
	(define next-value (read input-port)) ; save the next value from the file
	(cond
		[(eof-object? next-value) '()]
		[else (cons next-value
		            (read-list-of-values-from-file input-port))]))
```
	
Within the body of the function, the first define, `(define next-value (read
input-port))`, reads the next value from the file and "saves" it under the name
`next-value`. Then the `cond` can both test the value for end-of-file *and* use
it if it isn't end-of-file.

Finally, here's the function to read all the data from the file:

```scheme
(define ip (open-input-file "your/path/to/Data/INDO-2012.csv"))

(define demand-data (read-list-of-values-from-fle ip))
```
	
