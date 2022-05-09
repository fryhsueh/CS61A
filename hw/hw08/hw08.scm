(define (rle s)
  'YOUR-CODE-HERE
  (define (compress-number stream number num-of-number)     
            (if (and (not (null? stream))  (= (car stream) number)  )
                (compress-number (cdr-stream stream) number (+ num-of-number 1))
                (cons-stream (list number num-of-number) (rle stream))
                )
    )
    (if (null? s) 
        '()
        (compress-number (cdr-stream s) (car s) 1)
    )
)



(define (group-by-nondecreasing s)
    'YOUR-CODE-HERE
    (define (make-group stream group) 
        (if (and (not (null? stream)) (or (null? group) (>= (car stream) (car group))))
            (make-group (cdr-stream stream) (cons (car stream) group))
            (cons-stream (reverse group) (group-by-nondecreasing stream))
        )
    )    
    (define (reverse stream)
        (define (rec input output)
            (if (null? input)
                output
                (rec (cdr input) (cons (car input) output))
            )
        )
        (rec stream nil)
    )
    (if (null? s)
        '()
        (make-group s nil)
    
    )
)

(define finite-test-stream
    (cons-stream 1
        (cons-stream 2
            (cons-stream 3
                (cons-stream 1
                    (cons-stream 2
                        (cons-stream 2
                            (cons-stream 1 nil))))))))

(define infinite-test-stream
    (cons-stream 1
        (cons-stream 2
            (cons-stream 2
                infinite-test-stream))))

