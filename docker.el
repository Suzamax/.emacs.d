(use-package docker
  :commands docker)

(use-package dockerfile-mode
  :mode ("Dockerfile\\'" . dockerfile-mode))

(use-package yaml-mode
  :mode ("\\.yml\\'" . yaml-mode))
