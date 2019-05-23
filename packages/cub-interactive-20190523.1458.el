;;; cub-interactive.el --- Interactive Helper  -*- lexical-binding:t -*-
;; Version: 201905.01
;; Package-Version: 20190523.1458

(defun cub-interactive (&optional line)
  (seq-reduce
   (lambda (txt exp)
     (if (string-empty-p txt)
	 (s-trim (or (eval exp) ""))
       txt))
   `(,line
     (buffer-substring-no-properties (mark) (point))
     (read-string "INPUT: "))
   ""))

(provide 'cub-interactive)

;;; cub-interactive.el ends here
