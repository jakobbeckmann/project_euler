# The following iterative sequence is defined for the set of positive integers:
#
# n → n/2 (n is even)
# n → 3n + 1 (n is odd)
#
# Using the rule above and starting with 13, we generate the following sequence:
#
# 13 → 40 → 20 → 10 → 5 → 16 → 8 → 4 → 2 → 1
# It can be seen that this sequence (starting at 13 and finishing at 1) contains 10 terms. Although it has not been proved yet (Collatz Problem), it is thought that all starting numbers finish at 1.
#
# Which starting number, under one million, produces the longest chain?
#
# NOTE: Once the chain starts the terms are allowed to go above one million.

import tables

type
  CollatzCache = Table[int, int]

proc init_CollatzCache(): CollatzCache =
  result = initTable[int, int]()

proc collatz(cc: var CollatzCache, val: int): int =
  ## Returns the collatz sequence length for the given input.
  if cc.hasKey(val):
    return cc[val]
  if val == 1:
    cc[1] = 1
    return 1
  if val mod 2 == 0:
    result = collatz(cc, int(val / 2)) + 1
  else:
    result = collatz(cc, 3 * val + 1) + 1
  # memoize result
  cc[val] = result

proc solution*(val: int): int =
  var cc = init_CollatzCache()
  for num in 1..<val:
    let count = collatz(cc, num)
    if count > result:
      result = count
