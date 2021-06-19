(use-package web-mode
  :mode (("\\.html\\'" . web-mode)))


(use-package simple-httpd
  :defer t)

(use-package request
  :defer t)

(use-package js2-mode
  :mode ("\\.js\\'" . js2-mode))

(use-package tide
  :hook (js-mode . tide-mode)
  :config
  (tide-setup)
  (setq company-tooltip-align-annotations t)
  (eldoc-mode)
  (tide-hl-identifier-mode)
  (company-mode))
