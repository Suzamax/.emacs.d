;; Dashboard requirements.
(use-package all-the-icons
  :straight t)

(add-to-list 'load-path (expand-file-name "~/.emacs.d/all-the-icons-dired"))
(load "all-the-icons-dired.el")
(add-hook 'dired-mode-hook 'all-the-icons-dired-mode)
