def gcd(x, y):
    return y if x % y == 0 else gcd(y, x % y )