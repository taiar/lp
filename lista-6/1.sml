fun member (_, nil) = false
  | member (e, h::t) = if e = h
    then true
    else member(e, t)