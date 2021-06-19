(use-package company
  :commands company-mode
  :bind (:map company-active-map
	      ("C-n" . 'company-select-next)
	      ("C-p" . 'company-select-previous))
  :hook ((emacs-lisp-mode . company-mode)
	 (lisp-mode . company-mode)
	 (sly-mrepl-mode . company-mode))
  :config
  (setq company-idle-delay 0)

  ;; Using digits to select company-mode candidates
  ;; https://oremacs.com/2017/12/27/company-numbers/
  (setq company-show-numbers t)

  (let ((map company-active-map))
    (mapc
     (lambda (x)
       (define-key map (format "%d" x) 'ora-company-number))
     (number-sequence 0 9))
    (define-key map " " (lambda ()
			  (interactive)
			  (company-abort)
			  (self-insert-command 1)))
    (define-key map (kbd "<return>") nil))

  (defun ora-company-number ()
    "Forward to `company-complete-number'.

Unless the number is potentially part of the candidate.
In that case, insert the number."
    (interactive)
    (let* ((k (this-command-keys))
	   (re (concat "^" company-prefix k)))
      (if (cl-find-if (lambda (s) (string-match re s))
		      company-candidates)
	  (self-insert-command 1)
	(company-complete-number (string-to-number k))))))

(use-package company-quickhelp
  :hook (company-mode . company-quickhelp-local-mode))

(use-package company-prescient
  :after company
  :config
  (company-prescient-mode))

(add-hook 'after-init-hook 'global-company-mode)
