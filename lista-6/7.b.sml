use (OS.FileSys.getDir() ^ "/../lista-6/7.a.sml");

fun uniao (nil, nil) = nil
  | uniao (nil, a) = if not isIn (tl a, hd a) then hd a :: uniao(tl a, nil) else uniao(tl a, nil)
  | uniao (a, nil) = if not isIn (tl a, hd a) then hd a :: uniao(tl a, nil) else uniao(tl a, nil)
  | uniao (a, b) = if not isIn (tl a, hd b) andalso !isIn(tl b, hd a)
    then hd b :: uniao (a, tl b)
    else uniao (a, tl b)