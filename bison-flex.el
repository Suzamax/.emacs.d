;; Bison and Flex

(setq imenu-create-index-function 
        (lambda ()
          (let ((end))
             (beginning-of-buffer)
             (re-search-forward "^%%")
             (forward-line 1)
             (setq end (save-excursion (re-search-forward "^%%") (point)))
             (loop while (re-search-forward "^\\([a-z].*?\\)\\s-*\n?\\s-*:" end t)
                   collect (cons (match-string 1) (point))))))
