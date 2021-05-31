(use-package web-mode
  :straight t
  :mode (("\\.html\\'" . web-mode)))


(use-package simple-httpd
  :straight t
  :defer t)

(use-package request
  :straight t
  :defer t)

(use-package js2-mode
  :straight t
  :mode ("\\.js\\'" . js2-mode))

(use-package tide
  :straight t
  :hook (js-mode . tide-mode)
  :config
  (tide-setup)
  (setq company-tooltip-align-annotations t)
  (eldoc-mode)
  (tide-hl-identifier-mode)
  (company-mode))
