val ZERO  = fn s => fn z => z;
val ONE   = fn s => fn z => s z;
val TWO   = fn s => fn z => s (s z);
val THREE = fn s => fn z => s (s (s z));
fun INC n = n + 1;
val MUL   = fn n1 => fn n2 => fn z => n1 (n2 z);
fun P x   = x INC 0;