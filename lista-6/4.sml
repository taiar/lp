use (OS.FileSys.getDir() ^ "/../lista-5/12.sml");
use (OS.FileSys.getDir() ^ "/../lista-5/15.sml");

fun evalhelper([a], g, x) = a * (pow(x, g))
  | evalhelper(p, g, x) = (hd p * (pow(x, g))) + evalhelper(tl p, g + 1, x);

fun eval (nil, x) = 0.0
  | eval (l, x) = evalhelper(l, 0, x);

evalhelper([1.0, 5.0, 3.0],0,2.0);

eval([1.0, 5.0, 3.0],2.0);