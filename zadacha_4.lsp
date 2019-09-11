(defun split-string (str &optional (delimiter #\Space))
    (let ((splited nil) (word nil))
        (loop for letter across str do
                (if (char= letter delimiter)
                        (progn (push (coerce (nreverse word) 'string) splited)
                                (setf word nil))
                        (push letter word)))
        (push (coerce (nreverse word) 'string) splited)
        (nreverse splited)))


(defun trim-first-char (input_str)
    ( let ((my_res ""))
        (set-default-character-element-type 'character)
        ( loop for x in (remove "" (split-string input_str) :test #'equal )
                do ( 
                    if (string/= "" (subseq x 1))
                     (setf my_res (concatenate 'string my_res " " (subseq x 1)))
                )
        ) 
        (subseq my_res 1)
    )
)


(print ( trim-first-char "это ушла срезка с плугом")
