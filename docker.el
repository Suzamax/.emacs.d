(use-package docker
  :straight t
  :commands docker)

(use-package dockerfile-mode
  :straight t
  :mode ("Dockerfile\\'" . dockerfile-mode))

(use-package yaml-mode
  :straight t
  :mode ("\\.yml\\'" . yaml-mode))
