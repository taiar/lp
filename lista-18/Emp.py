class NegativeSalary:
  def __init__(self, name, salary):
    self.name = name
    self.salary = salary
  def __str__(self):
    return "Attempty to assign", self.name, " the salary ", repr(self.salary)

class NonExistentEmployee:
  def __init__(self):
    self.msg = "Error: the given name does not represent a valid employee!"
  def __str__(self):
    return msg

class Staff:
  payroll = {}
  def getSalary(self, name):
    if self.payroll.has_key(name):
      return self.payroll[name]
    else:
      return 0.0
  def safeGetSalary(self, name):
    if self.payroll.has_key(name):
      return self.payroll[name]
    else:
      raise NonExistentEmployee()
  def addEmp(self, name, salary):
    if salary < 0:
      raise NegativeSalary(name, salary)
    self.payroll[name] = salary
  def raiseSalary(self, name, salary):
    if salary < 0:
      raise NegativeSalary(name, salary)
    if not(self.payroll.has_key(name)):
      raise NonExistentEmployee()
    self.payroll[name] = self.payroll[name] + salary
  def __str__(self):
    return repr(self.payroll)

def readEmployees():
  s = Staff()
  s.addEmp("Alberto", 1800.0)
  s.addEmp("Bernardo", 1600.0)
  s.addEmp("Carlos", 2200.0)
  s.addEmp("Danilo", 3400.0)
  print s
  while True:
    try:
      name = raw_input("Please, enter a name (Press RETURN to finish) ")
      if name == '':
        break
      salary = float(raw_input("Please, enter the salary: "))
      s.raiseSalary(name, salary)
      name = raw_input("Please, enter a name (Press RETURN to finish) ")
    except NonExistentEmployee:
      print name, " does not designate a valid employee. Try again"
    except NegativeSalary, ns:
      print "invalid salary ", ns.salary, " for ", ns.name

readEmployees()

"""s = Staff()
s.addEmp("Fernando", 18.0)
s.addEmp("Giovani", 19.0)
print "Using getSalary"
print s.getSalary("Fernando")
print s.getSalary("Giovani")
print s.getSalary("Pedro")
print "Using safeGetSalary"
print s.safeGetSalary("Fernando")
print s.safeGetSalary("Giovani")
print s.safeGetSalary("Pedro")
s.addEmp("Fernando", -18.0)"""
