(use-package magit
  :bind (("C-x g" . magit-status)))

(use-package emmet-mode
  :hook ((web-mode . emmet-mode)
	 (css-mode . emmet-mode)))

(use-package rainbow-mode
  :diminish rainbow-mode
  :hook ((org-mode . rainbow-mode)
	 (web-mode . rainbow-mode)))

(use-package impatient-mode
  :defer t)

(use-package page-break-lines)

(use-package spaceline)
;;(spaceline-spacemacs-theme)

(use-package spaceline-all-the-icons 
  :after spaceline
  :config (spaceline-all-the-icons-theme))

(setq spaceline-all-the-icons-separator-type 'slant)

(use-package doom-themes
  :config
  (load-theme 'doom-fairy-floss t))
;; Global settings (defaults)
  (setq doom-themes-enable-bold t    ; if nil, bold is universally disabled
        doom-themes-enable-italic t) ; if nil, italics is universally disabled

(when (eq system-type 'darwin)
  (setq mac-right-option-modifier 'none))

(setq linum-format "%4d \u2502 ")

(setq-default display-line-numbers-width 3)
(tool-bar-mode -1)

(use-package ns-auto-titlebar)
(when (eq system-type 'darwin) (ns-auto-titlebar-mode))

(use-package hl-todo)

(setq hl-todo-keyword-faces
      '(("TODO"   . "#00FF00")
        ("FIXME"  . "#FF0000")
        ("DEBUG"  . "#A020F0")
        ("GOTCHA" . "#FF4500")
        ("STUB"   . "#1E90FF")))
