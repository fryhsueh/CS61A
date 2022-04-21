import re


def fib(n):
    #print sum of the first n fibonacci number
    
    def doFib(first, second, n):
        if n == 2:
            return first + second
        else:
            return doFib(second, first + second, n - 1)
    if n == 0:
        return 0
    elif n == 1:
        return 1
    else:
        return doFib(0, 1, n)


def do_draw(balance):
    def draw(amount):
        
        return balance
    return draw                    