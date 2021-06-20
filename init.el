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

(add-to-list 'default-frame-alist '(font . "Cascadia Code PL 14" ))

(use-package exec-path-from-shell)
(when (memq window-system '(mac ns x))
  (exec-path-from-shell-initialize))

;; (setq debug-on-error t)

(load-user-file "all-the-icons.el")
(load-user-file "utils.el")
(load-user-file	"ivy.el")
(load-user-file "dashboard.el")
(load-user-file "web-mode.el")
(load-user-file "company.el")
(load-user-file "docker.el")
(load-user-file "tabs.el")
(load-user-file "spotify.el")
(load-user-file "treemacs.el")
(load-user-file "projectile.el")
(load-user-file "ide.el")
(load-user-file "lsp-java-lombok.el")

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("7a7b1d475b42c1a0b61f3b1d1225dd249ffa1abb1b7f726aec59ac7ca3bf4dae" default))
 '(package-selected-packages
   '(helm-spotify-plus centaur-tabs yaml-mode dockerfile-mode docker company-prescient company-quickhelp tide js2-mode web-mode dashboard counsel doom-themes spaceline-all-the-icons spaceline page-break-lines impatient-mode rainbow-mode emmet-mode magit all-the-icons-dired all-the-icons yasnippet which-key use-package projectile lsp-ui lsp-java helm-lsp flycheck company)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
