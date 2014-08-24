fun repeats nil = false
  | repeats [a] = false
  | repeats (a::b::t) =
    if a = b
    then true
    else repeats(b::t);

(*repeats([1,1,4,3,4,3,2,6,5,4,3,0,3,1,2,3,4,5]);*)