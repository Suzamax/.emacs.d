(use-package elixir-mode)
(use-package alchemist)
(use-package mix
  :config
  (add-hook 'elixir-mode-hook 'mix-minor-mode))
(add-hook 'elixir-mode-hook
          (lambda () (add-hook 'before-save-hook 'elixir-format nil t)))
