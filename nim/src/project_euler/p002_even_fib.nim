# Even Fibonacci numbers
# Problem 2
# Each new term in the Fibonacci sequence is generated by adding the previous two terms. By starting with 1 and 2, the
# first 10 terms will be:
#
#                                    1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...
#
# By considering the terms in the Fibonacci sequence whose values do not exceed four million, find the sum of the
# even-valued terms.

import sequtils, sugar
from math import sum

import lib/fibonacci

proc solution*(num: int): int =
  ## Simple solution using loop over iterator.
  for fib in fibonacci.fib_with_ceil(num):
    if fib mod 2 == 0:
      result += fib


proc solution2*(num: int): int =
  ## More compact solution making use of templates and syntactic sugar.
  to_seq(fibonacci.fib_with_ceil(num)).filter(x => x mod 2 == 0).sum()
