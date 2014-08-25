fun isIn (nil, _) = false
  | isIn (h::t, e) =
    if h = e
    then true
    else isIn(t, e)