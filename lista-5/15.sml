use "14.sml";

fun length x = if null x
  then 0
  else 1 + length (tl x);

fun selecthelper(l, f, 0) = l
  | selecthelper(l, f, n) = if (f (hd l))
    then selecthelper(tl l @ [hd l], f, n - 1)
    else selecthelper(tl l, f, n - 1)

fun select (l, f) = selecthelper(l, f, length l);