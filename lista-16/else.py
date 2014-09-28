#! /usr/bin/python

def mystery(limit):
  nums = []
  for n in range(2, limit):
    for x in range(2, n):
      if n % x == 0:
        break
    else:
      nums.append(n)
  return nums

print mystery(500)