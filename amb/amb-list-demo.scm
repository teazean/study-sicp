(define (require p)
  (if (not p) (amb)))

(define (an-item items)
    (if (null? items)
        '()
        (amb (car items) (an-item (cdr items)))))
(let ((x (an-item (list 1 3 4 5)))
      (y (an-item (list 3 5 6 7))))
    (require (eq? x y))
    (list x y))
