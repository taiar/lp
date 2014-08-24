fun particao (nil, _) = (nil, nil)
  | particao (h::t, p) =
    let val (a, b) = particao(t, p)
    in
      if h < p
      then (h::a, b)
      else (a, h::b)
    end;

fun quicksort nil = nil
  | quicksort (h::t) =
  let val (a, b) = particao(t, h)
  in quicksort(a) @ h::nil @ quicksort(b)
  end;

(*particao([6,3,4,5,21,4,5,7,5,3,2,6,8], 6);*)
(*quicksort([6,3,4,5,21,4,7,2,2,2,2,2,2,2,23,2,6,8]);*)