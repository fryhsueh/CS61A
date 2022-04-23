def fib(n):
    if n == 0 or n == 1:
        return n
    else:
        return fib(n - 2) + fib(n - 1)

def count(f):
    def counted(n):
        counted.count += 1
        return f(n)
    counted.count = 0
    return counted     
     
fib = count(fib)
fib(5)
fib.count     