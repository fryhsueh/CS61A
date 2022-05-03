
(define-macro (def func args body)
    'YOUR-CODE-HERE
   `(define ,(cons func args)
      ,body)
)


(define (map-stream f s)
    (if (null? s)
    	nil
    	(cons-stream (f (car s)) (map-stream f (cdr-stream s)))))

(define all-three-multiples
  (cons-stream 3 (map-stream (lambda (x) (+ x 3)) all-three-multiples))
)


(define (compose-all funcs)
  'YOUR-CODE-HERE
  (define (rec funcs start)
    (if (null? funcs)
        start
        (rec (cdr funcs) ((car funcs) start))
    )
  )
  (lambda (x) (rec funcs x))

)


(define (partial-sums stream)
  'YOUR-CODE-HERE
  (define (helper base stream)
    (if (null? stream)
        nil
      (cons-stream (+ base (car stream)) (helper (+ base (car stream)) (cdr-stream stream)))
    )
  )

  (helper 0 stream)
)

