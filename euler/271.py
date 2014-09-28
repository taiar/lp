singleSoln = 2 * 3 * 5 * 11 * 17 * 23 * 29 * 41
multipleSoln = 7 * 13 * 19 * 31 * 37 * 43

def s(n, ssn, msn):
    sum = 0
    x = ssn + 1

    while n > x:
        if x**3 % msn == 1:
            sum += x
        x += ssn
    return sum;


n = 13082761331670030

print(s(n, singleSoln, multipleSoln))