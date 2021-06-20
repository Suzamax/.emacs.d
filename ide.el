(condition-case nil
    (require 'use-package)
  (file-error
   (require 'package)
   (add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
   (package-initialize)
   (package-refresh-contents)
   (package-install 'use-package)
   (setq use-package-always-ensure t)
   (require 'use-package)))


(use-package flycheck)
(use-package yasnippet :config (yas-global-mode))
(use-package lsp-mode :hook ((lsp-mode . lsp-enable-which-key-integration))
  :config (setq lsp-completion-enable-additional-text-edit nil))
(use-package hydra)
(use-package lsp-ui)
(use-package which-key :config (which-key-mode))
(use-package lsp-java :config (add-hook 'java-mode-hook 'lsp))
(use-package dap-mode :after lsp-mode :config (dap-auto-configure-mode))
(use-package dap-java :ensure nil)
(use-package lsp-ivy)
(use-package helm-lsp)
(use-package helm
  :config (helm-mode))
(use-package lsp-treemacs)

;; SET JAVA_HOME

(require 'lsp-java-boot)

;; to enable the lenses
(add-hook 'lsp-mode-hook #'lsp-lens-mode)
(add-hook 'java-mode-hook #'lsp-java-boot-lens-mode)

(setq gc-cons-threshold 100000000)
(setq read-process-output-max (* 1024 1024)) ;; 1mb

(defun linum-java-mode-hook () 
  (linum-mode 1)) 
(add-hook 'java-mode-hook 'linum-java-mode-hook) 
(add-hook 'java-mode-hook 'hl-todo-mode)

(setq
 lsp-java-format-enabled t
 lsp-java-format-comments-enabled t
 lsp-java-save-action-organize-imports t
 lsp-java-save-action-organize-imports t
 lsp-java-import-gradle-enabled t
 lsp-java-import-maven-enabled t
 lsp-java-auto-build t
 lsp-print-io t
 lsp-java-progress-report t
 lsp-java-completion-guess-arguments t
 lsp-java-enable-file-watch t)

  ;;    ;; Debug Server
  ;;    lsp-java-trace-server t
  ;;    lsp-java-progress-report t
  ;;    )
