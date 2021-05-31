(use-package magit
  :straight t
  :bind (("C-x g" . magit-status)))

(use-package emmet-mode
  :straight t
  :hook ((web-mode . emmet-mode)
	 (css-mode . emmet-mode)))

(use-package rainbow-mode
  :straight t
  :diminish rainbow-mode
  :hook ((org-mode . rainbow-mode)
	 (web-mode . rainbow-mode)))

(use-package impatient-mode
  :straight t
  :defer t)

(use-package page-break-lines
  :straight t)

(use-package spaceline
  :straight t)
(spaceline-emacs-theme)

(use-package kaolin-themes
  :straight t
  :config
  (load-theme 'kaolin-galaxy t))
