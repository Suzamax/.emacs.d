;; JAVA MODE

(use-package lsp-java
  :requires (dap-java lsp-java-boot))

(with-eval-after-load 'lsp-java
  (lsp-java-lombok))
	   (add-hook 'java-mode-hook #'lsp)

	   ;; to enable the lenses
	   (add-hook 'lsp-mode-hook #'lsp-lens-mode)
	   (add-hook 'java-mode-hook #'lsp-java-boot-lens-mode)
	  
(setq gc-cons-threshold 100000000)
(setq read-process-output-max (* 1024 1024)) ;; 1mb
;; (setq lsp-enable-links nil)

