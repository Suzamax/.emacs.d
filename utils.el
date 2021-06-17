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
(spaceline-spacemacs-theme)

(use-package spaceline-all-the-icons 
  :after spaceline
  :straight t
  :config (spaceline-all-the-icons-theme))

(setq spaceline-all-the-icons-separator-type 'wave)

(use-package doom-themes
  :straight t
  :config
  (load-theme 'doom-fairy-floss t))
;; Global settings (defaults)
  (setq doom-themes-enable-bold t    ; if nil, bold is universally disabled
        doom-themes-enable-italic t) ; if nil, italics is universally disabled
