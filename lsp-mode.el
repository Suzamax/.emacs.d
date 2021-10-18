(use-package lsp-mode
  :init
  ;; set prefix for lsp-command-keymap (few alternatives - "C-l", "C-c l")
  (setq lsp-keymap-prefix "C-c l")
  :hook (;; replace XXX-mode with concrete major-mode(e. g. python-mode)
         (c-mode . lsp)
         ;; if you want which-key integration
         (lsp-mode . lsp-enable-which-key-integration))
  :config (setq lsp-completion-enable-additional-text-edit nil)
  :commands lsp)

;; optionally
(use-package lsp-ui :commands lsp-ui-mode)
(use-package lsp-treemacs)

;; optional if you want which-key integration
(use-package which-key
    :config
    (which-key-mode))

;; Flycheck
(use-package flycheck
  :ensure t
  :init (global-flycheck-mode))


(use-package yasnippet
  :ensure t
  :config (yas-global-mode)
  )

(use-package dap-mode
  :ensure t
  :after lsp-mode
  :config (dap-auto-configure-mode))

