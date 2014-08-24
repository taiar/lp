fun particao (nil, _, _) = (nil, nil)
  | particao (h::t, p, f) =
    let val (a, b) = particao(t, p, f)
    in
      if f(h, p)
      then (h::a, b)
      else (a, h::b)
    end;

fun quicksort (nil, _) = nil
  | quicksort (h::t, f) =
  let val (a, b) = particao(t, h, f)
  in quicksort(a, f) @ h::nil @ quicksort(b, f)
  end;

fun icmp (a, b) = a < b;
fun rcmp (a:real, b) = a < b;
fun ircmp (a, b) = a > b;

(*quicksort([6,3,4,5,21,4,7,2,2,2,2,2,2,2,23,2,6,8], ircmp);*)
(*quicksort([6,3,4,5,21,4,7,2,2,2,2,2,2,2,23,2,6,8], icmp);*)