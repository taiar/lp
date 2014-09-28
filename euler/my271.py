def check_validation(m, n):
  return m ** 3 % n == 1

n = 13082761331670030L
i = 2
s = 0

while i < n:
  if(check_validation(i, n)):
    s += i
    print i
  i += 1
print "==" + str(s)