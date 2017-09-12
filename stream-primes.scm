; 素数筛的流式实现

(define (sieve stream)
    (let ((first (stream-car stream))
        (cons-stream first 
            (sieve 
                (stream-filter 
                     (lambda (x) (not (divisiable? x first)))
                     (stream-cdr stream)))))))

(define (integers-starting-from n)
    (cons-stream n (integers-starting-from (+ 1 n))))

(define primes (sieve (integers-starting-from 2)))
