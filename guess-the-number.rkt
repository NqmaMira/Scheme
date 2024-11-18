#lang scheme

(define (guess-the-num n)
  (display "Guess a number: ")
  (define guess (string->number (read-line)))
  (cond ((> n guess) (displayln "Try a bigger number!") (guess-the-num n))
        ((< n guess) (displayln "Try a smaller number!") (guess-the-num n))
        (else (displayln "Yes! You win!\n Play again?(Type yes to play again): ")
              (define answer (read-line))
              (cond ((string=? "yes" answer) (guess-the-num (random 1 101)))
                    (else (display "Bye bye!"))))))

(displayln "Guess a number between 1-100")
(guess-the-num (random 1 101))

