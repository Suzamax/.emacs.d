;; Bootstrapping

(setq straight-check-for-modifications '(check-on-save))
(defvar bootstrap-version)
(let ((bootstrap-file
       (expand-file-name "straight/repos/straight.el/bootstrap.el" user-emacs-directory))
      (bootstrap-version 5))
  (unless (file-exists-p bootstrap-file)
    (with-current-buffer
	(url-retrieve-synchronously
	 "https://raw.githubusercontent.com/raxod502/straight.el/develop/install.el"
	 'silent 'inhibit-cookies)
      (goto-char (point-max))
      (eval-print-last-sexp)))
  (load bootstrap-file nil 'nomessage))

(straight-use-package 'use-package)

;; Font definition - I use MS Cascadia :-)

(add-to-list 'default-frame-alist '(font . "Cascadia Code 18" ))

;; Definition of requirements

(defconst user-init-dir
  (cond ((boundp 'user-emacs-directory)
         user-emacs-directory)
        ((boundp 'user-init-directory)
         user-init-directory)
        (t "~/.emacs.d/")))


(defun load-user-file (file)
  (interactive "f")
  "Load a file in current user's configuration directory"
  (load-file (expand-file-name file user-init-dir)))


(use-package use-package-ensure-system-package
  :straight t)

(use-package diminish
  :straight t
  :defer t)
(require 'bind-key)

(load-user-file "all-the-icons.el")
(load-user-file "utils.el")
(load-user-file	"ivy.el")
(load-user-file "dashboard.el")
(load-user-file "web-mode.el")
(load-user-file "company.el")
(load-user-file "docker.el")
(load-user-file "tabs.el")
(load-user-file "spotify.el")
(load-user-file "java-lsp.el")

;;; Variables
(global-visual-line-mode)
(global-set-key (kbd "TAB") 'self-insert-command)
(global-set-key (kbd "\C-c h") 'highlight-symbol-at-point)
(setq visible-bell 1)

;; For versions >= 27, this is done on early-init.el
(when (< emacs-major-version 27)
  (menu-bar-mode 1)
  (tool-bar-mode 1)
  (scroll-bar-mode -1))
(global-display-line-numbers-mode 1)
