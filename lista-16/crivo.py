#! /usr/bin/python

import time

def crivoa(candidates):
  for i in range(0, int(len(candidates) ** 0.5 + 1)):
    currentPrime = candidates[i]
    if currentPrime != 0:
      for j in range(i+ currentPrime, len(candidates), currentPrime):
        if candidates[j] % candidates[i] == 0:
          candidates[j] = 0
  return filter(lambda x : x != 0, candidates)

def crivob(l):
  if l[0] * l[0] <= l[len(l) - 1]:
    l[1:] = crivob(filter(lambda x : x % l[0] != 0, l))
  return l

def tempoCrivo(maiorPrimo, n, funcao):
  t0 = 0
  for m in range(0, n):
    taux = time.clock()
    primes0 = funcao(range(2,maiorPrimo))
    t0 = t0 + time.clock() - taux
  return(t0 / n)

# tamanhos = [10, 50, 100, 500, 1000, 5000, 10000, 50000, 60000, 70000, 80000, 90000, 100000, 200000, 300000, 400000, 500000, 600000, 700000, 800000, 900000, 1000000]
# print "Crivo A (Imperativo)"
# for i in tamanhos:
#   print "(" + str(i) + ")\t=> " + str(tempoCrivo(i + 1, 5, crivoa))
#
# print "Crivo B (Declarativo)"
# for i in tamanhos:
#   print "(" + str(i) + ")\t=> " + str(tempoCrivo(i + 1, 5, crivob))