ns = [13082761331670030, 91]
ms = [[2,3,5,7,11,13,17,19,23,29,31,37,41,43], [7,13]]

class Problema:

  def __init__(self, numero, multiplos):
    self.numero = numero
    self.multiplos = multiplos
    self.dbg = False

  def set_dbg(self, dbg):
    self.dbg = dbg

  def resolve(self):
    if self.dbg: print "Congruencias: "
    self.gera_congruencias()
    if self.dbg: print "Parciais: "
    self.gera_parciais()
    if self.dbg: print "Soma: "
    return self.soma_parciais()

  def gera_congruencias(self):
    self.congruencias = []
    for n in self.multiplos:
      self.congruencias.append(Problema.cong(n))
    if self.dbg: print self.congruencias

  def gera_parciais(self):
    self.parciais = []
    for i in range(0, len(self.congruencias)):
      for j in range(0, len(self.congruencias)):
        if i != j:
          for m in self.congruencias[i]:
            for n in self.congruencias[j]:
              termo = Problema.teorema_chines([self.multiplos[i],self.multiplos[j]], [m,n])
              if termo not in self.parciais and termo != 1:
                self.parciais.append(termo)
    if self.dbg:
      self.parciais.sort()
      print self.parciais

  def soma_parciais(self):
    s = sum(self.parciais)
    if self.dbg: print s
    return s

  @staticmethod
  def cong(y):
    sum = 1
    lista = []
    while sum < y:
      if sum**3 % y == 1:
        lista.append(sum)
      sum += 1
    return lista

  @staticmethod
  def teorema_chines(n, a):
    lena = len(a)
    p = i = prod = 1; sm = 0
    for i in range(lena): prod *= n[i]
    for i in range(lena):
        p = prod / n[i]
        sm += a[i] * Problema.mul_inv(p, n[i]) * p
    return sm % prod

  @staticmethod
  def mul_inv(a, b):
    b0 = b
    x0, x1 = 0, 1
    if b == 1: return 1
    while a > 1:
      q = a / b
      a, b = b, a%b
      x0, x1 = x1 - q * x0, x0
    if x1 < 0: x1 += b0
    return x1

ex = 1

p = Problema(ns[ex], ms[ex])
p.dbg = True
print p.resolve()
