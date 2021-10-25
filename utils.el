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

(use-package vscode-icon
  :ensure t
  :commands (vscode-icon-for-file))

(use-package vscode-dark-plus-theme
  :ensure t
  :config
  (load-theme 'vscode-dark-plus t))

;;(use-package doom-themes
;;  :config
;;  (load-theme 'doom-one t))
;; Global settings (defaults)
;;  (setq doom-themes-enable-bold t    ; if nil, bold is universally disabled
;;        doom-themes-enable-italic t) ; if nil, italics is universally disabled
;; macOS
(when (eq system-type 'darwin)
  (use-package ns-auto-titlebar)
  (ns-auto-titlebar-mode)
  (setq mac-right-option-modifier 'none)
  (menu-bar-mode 1)
    (setq default-input-method "MacOSX"))

(use-package hl-todo)

(setq hl-todo-keyword-faces
      '(("TODO"   . "#00FF00")
        ("FIXME"  . "#FF0000")
        ("DEBUG"  . "#A020F0")
        ("GOTCHA" . "#FF4500")
        ("STUB"   . "#1E90FF")))

;; Packages
(use-package highlight-symbol)
(use-package color-identifiers-mode)
(use-package highlight-indent-guides)
(use-package function-args)
(use-package doom-modeline)
