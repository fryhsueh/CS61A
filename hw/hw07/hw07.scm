(define (cddr s) (cdr (cdr s)))

(define (cadr s) 'YOUR-CODE-HERE (car (cdr s)))

(define (caddr s) 'YOUR-CODE-HERE (car (cddr s)))

(define (sign num)
  'YOUR-CODE-HERE
  (cond 
    ((= 0 num) 0)
    ((> 0 num) -1)
    ((< 0 num) 1)))

(define (square x) (* x x))

(define (pow x y)
  'YOUR-CODE-HERE
  (if (= 1 y)
      x
      (if (even? y)
          (square (pow x (quotient y 2)))
          (* x (square (pow x (quotient (- y 1) 2)))))))

(define (unique s)
  'YOUR-CODE-HERE
      
    (define (rec lst out)
            (if (null? lst)
                out
            (rec (filter (lambda (ele) (not (eq? (car lst) ele))) lst) (cons (car lst) out))    
                ))            

    (define (reverse lst out) 
        (if (null? lst)
            out
            (reverse (cdr lst) (cons (car lst) out))
            )
        )
    (reverse (rec s nil) nil)
)

(define (replicate x n) 'YOUR-CODE-HERE
    (define (rec elem times out)
        (if (= times 0)
            out
            (rec elem (- times 1) (cons elem out))
            )
        )
    
    )

(define (accumulate combiner start n term)
  'YOUR-CODE-HERE)

(define (accumulate-tail combiner start n term)
  'YOUR-CODE-HERE)

(define-macro
 (uglyversion list-of map-expr for var in lst if filter-expr)
 'YOUR-CODE-HERE
 (list 'map (list 'lambda (list var) map-expr) (list 'filter (list 'lambda (list var) filter-expr) lst) 
 )
)

(define-macro (list-of map-expr for var in lst if filter-expr)
  'YOUR-CODE-HERE
  `(map (lambda (,var) ,map-expr) (filter (lambda (,var) ,filter-expr) ,lst))
)

(define-macro (for x in lst do expr)
  `(map (lambda (,x) ,expr) ,lst)
  )
