> To iterate is human; to recurse, divine.
>
> — L. Peter Deutsch 

Recusion
========

Last week, we wrote a program to process a list of numbers, of arbitrary
length. In this case, we "processed" the list by adding up the numbers but the
general approach is the same for all programs which crunch lists. The approach
is to reduce the problem to a simpler version of itself, and to keep doing this
until the problem is so simple that we can solve it straight away. 

```
list-add ll
	If the length of ll is 0, the sum is 0; 
	Otherwise, add the first element of ll to
		       the sum of the rest of ll
```
	
This idea -- reducing the problem to a simpler version of itself and applying
the same function to the simpler version -- is called *recursion*.

Challenge
=========

National Grid produce half-hourly demand data. The data from 2012 is stored in
the file `Data/demand-2012.txt`. The format of this file is very basic: there is
one line for each half-hour, where each line contains a single number which is
the average power used in that half-hour (in MW).

Our challenge is to produce a frequency chart of this data.

To be specific, what we want to know is the count of the half-hours for which
the power fell within certain buckets. Our program should accept a list of
buckets. We might start with:


	less than 0
	 	 0 -  5,000 MW
	 5,000 - 10,000 MW
	 ...
	55,000 - 60,000 MW
	60,000 MW or greater
	
and we'll specify that the buckets include the lower limit but not the upper
limit.



