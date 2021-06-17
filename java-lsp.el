;; JAVA MODE

(use-package projectile
  :straight t)

(use-package flycheck
  :straight t)

(use-package yasnippet
  :straight t
  :config (yas-global-mode)
  )

(use-package lsp-mode
  :straight t
  :hook (
	 (lsp-mode . lsp-enable-which-key-integration)
	)
  :config (setq lsp-completion-enable-additional-text-edit nil)
  )

(use-package hydra :straight t)

(use-package lsp-ui :straight t)

(use-package which-key
  :straight t
  :config (which-key-mode)
  )

(use-package lsp-java
  :straight t
  :requires (dap-java lsp-java-boot)
  :config (
	     
	   (add-hook 'java-mode-hook #'lsp)

	   ;; to enable the lenses
	   (add-hook 'lsp-mode-hook #'lsp-lens-mode)
	   (add-hook 'java-mode-hook #'lsp-java-boot-lens-mode)
	   )
  )

(use-package dap-mode
  :straight t
  :after lsp-mode
  :config (dap-auto-configure-mode))

(use-package helm-lsp
  :straight t)

(use-package helm
  :straight t
  :config (helm-mode))

(use-package treemacs
  :straight t)

(use-package lsp-treemacs
  :straight t)
