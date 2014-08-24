fun maxhelper (nil, n) = n
  | maxhelper (a, n) = maxhelper(tl a,
    if hd a > n
    then hd a
    else n
  )

fun max x = maxhelper(tl x, hd x);