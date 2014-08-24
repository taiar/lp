fun cycle (a, 0) = a
  | cycle(a, b) = cycle(tl a @ [hd a], b - 1);