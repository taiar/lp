#include <iostream>
#include <string>

template <class T> class auto_ptr {
private:
  T* ptr;
public:
  explicit auto_ptr(T* p = 0) : ptr(p) { }
  ~auto_ptr() { delete ptr; }
  T& operator*() { return *ptr; }
  T* operator->() { return ptr; }
};

void foo0() {
  auto_ptr<std::string> p(new std::string("I did one P.O.F!\n"));
//  p->print();
}

void foo1() {
  try {
    auto_ptr<std::string> p(new std::string("Oi!\n"));
  }
  catch(int e) { std::cout << "Oops: " << e << "\n"; }
}

int main() {
  foo1();
  return 0;
}
