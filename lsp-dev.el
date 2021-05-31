(use-package lsp-mode
  :straight t
  :config (setq lsp-diagnostic-package :flymake)
  :hook
  ((c++-mode . lsp)
   (c-mode . lsp)
   (js-mode . lsp)))

(use-package dumb-jump
  :straight t
  :defer t
  :config
  (setq dumb-jump-selector 'ivy))


(use-package ccls
  :after lsp-mode
  :straight t
  :config (setq ccls-executable "/usr/bin/ccls"))

(defun my-c-mode-common-hook ()
  (c-set-offset 'substatement-open 0)
  (c-set-offset 'access-label '/)
  (c-set-offset 'inclass '+)
  (setq c-default-style "bsd"
	c-basic-offset 4
	c-indent-level 4
	c-indent-tabs-mode t
	c-tab-always-indent t
	c++-tab-always-indent t
	tab-width 4
	backward-delete-function nil))

(add-hook 'c++-mode-common-hook 'my-c-mode-common-hook)
(add-hook 'c-mode-common-hook 'my-c-mode-common-hook)
