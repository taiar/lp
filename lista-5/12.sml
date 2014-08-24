fun pow (a:real, 0) = 1.0
  | pow (a:real, b) = pow(a, b - 1)*a;