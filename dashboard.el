(use-package dashboard
  :ensure t
  :config
  ;; Dashboard configuration.
  (dashboard-setup-startup-hook)
  (setq dashboard-startup-banner "~/.emacs.d/siamese.png")
  (setq dashboard-items '((recents . 5)
			  (projects . 5)
			  (bookmarks . 5)))
  (setq dashboard-set-init-info t)
  (setq dashboard-set-heading-icons t)
  (setq dashboard-set-file-icons t)
  (setq initial-buffer-choice (lambda () (get-buffer "*dashboard*"))))

