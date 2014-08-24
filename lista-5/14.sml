fun primehelper (m, 1) = true
  | primehelper(m, n) = if m mod n = 0
    then false
    else primehelper(m, n - 1);

fun isPrime(0) = false
  | isPrime(1) = false
  | isPrime(a) = primehelper(a, a div 2);

(*isPrime(4);
isPrime(5);
isPrime(6);
isPrime(7);
isPrime(8);
isPrime(9);
isPrime(10);
isPrime(999);
isPrime(99999997);
isPrime(2222);
isPrime(33131111);
isPrime(557771111);
isPrime(2);
isPrime(3);
isPrime(4);
isPrime(5);
isPrime(6);
isPrime(7);
isPrime(8);
isPrime(9);
isPrime(000001);
isPrime(2223);
isPrime(44424);
isPrime(44424);
isPrime(887877771);
isPrime(11111);
isPrime(231231);
isPrime(41414544);
isPrime(13212312);
isPrime(11111);
isPrime(333331);*)