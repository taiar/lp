import java.math.BigInteger;

public class Problem271 {
    private static BigInteger singleSoln = BigInteger.valueOf(2*3*5*11*17*23*29*41);
    private static BigInteger multipleSoln = BigInteger.valueOf(7*13*19*31*37*43);

    private static BigInteger s(BigInteger n) {
        BigInteger sum = BigInteger.ZERO;
        BigInteger x = singleSoln.add(BigInteger.ONE);

        while (x.compareTo(n) < 0) {
            if (x.pow(3).mod(multipleSoln).equals(BigInteger.ONE))
                sum = sum.add(x);
            x = x.add(singleSoln);
        }
        return sum;
    }

    public static void main(String[] args) {
        final long start = System.currentTimeMillis();
        BigInteger n = BigInteger.valueOf(13082761331670030L);

        System.out.println(s(n));
        System.out.format("%.3f\n", (System.currentTimeMillis()-start)/1000.0);
    }
}