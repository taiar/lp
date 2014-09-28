import pprint
from crivo import crivoa

# print(crivoa(range(2,9999)))

def perm(l):
  if len (l) <= 1 :
    yield l
  else:
    for p in perm(l[1:]):
      for i in range(len(l)):
        yield p[:i] + l[0:1] + p[i:]

def unique_chars(s):
  return len(s) == len(set(s))

def permuta_com_diferencas(n):
  perms = []
  for p in perm(str(n)):
    perms.append(p)
  sums = {}
  for a in perms:
    for b in perms:
      c = int(a) - int(b)
      if c > 0:
        if c in sums:
          sums[c] += 1
        else:
          sums[c] = 1
  pprint.pprint (sums)

def soma_range(n, s):
  perms = []
  sums = []
  for p in perm(str(n)):
    perms.append(p)
  print perms
  for p in perms:
    if (str(int(p) + s)) in perms:
      sums.append(p)
  print sums

# for p in perm([1,2,3]):
#   print p

# for p in perm("123"):
#   print p

primos = crivoa(range(2,9999))

for n in filter(lambda x : unique_chars(str(x)), primos):
  perms = []
  # print "===========> " + str(n)
  for p in perm(str(n)):
    if int(p) in primos:
      perms.append(p)
    else:
      print p
  sums = {}
  for a in perms:
    for b in perms:
      c = int(a) - int(b)
      if c > 0:
        if c in sums:
          sums[c] += 1
        else:
          sums[c] = 1
  for s in sums:
    if sums[s] >= 3:
      print str(n) + " - " + str(s)
      break

# permuta_com_diferencas(1039)
# soma_range(1039, 720)