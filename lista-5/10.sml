fun sqsum 0 = 0
  | sqsum a = a * a + sqsum (a - 1)