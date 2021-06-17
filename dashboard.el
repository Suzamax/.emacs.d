(use-package dashboard
  :straight t
  :after (all-the-icons page-break-lines)
  :config
  ;; Dashboard configuration.
  (dashboard-setup-startup-hook)
  (setq dashboard-banner-logo-title "All Mighty Suzamacs, the best Emacs ever!!!1")
  (setq dashboard-startup-banner "/Users/carlos/.emacs.d/siamese.png")
  (setq dashboard-items '((recents . 5)
			  (projects . 5)
			  (bookmarks . 5)))
  (setq dashboard-set-init-info t)
  (setq dashboard-set-heading-icons t)
  (setq dashboard-set-file-icons t)
  (setq initial-buffer-choice (lambda () (get-buffer "*dashboard*"))))

