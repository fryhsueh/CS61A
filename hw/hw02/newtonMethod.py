from math import e
"""newton's method"""

def sqrt(a):
    """get square root of x 
    >>> sqrt(36)
    6.0
    """
    return improve(newtonUpdate(lambda x: x*x - a, lambda x: 2*x), approx(a, lambda x: x*x))

def improve(update, close, guess = 1):
    while not close(guess):
        guess = update(guess)
    return guess

def newtonUpdate(f, g):
    def update(x):
        return x - f(x) / g(x)
    return update

def approx(target, f):
    def close(guess):
        return abs(f(guess) - target) < 1e-10
    return close