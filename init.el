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

(require 'package)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/") t)
(add-to-list 'package-archives
	     '("org" . "http://orgmode.org/elpa/") t)
(add-to-list 'package-archives '("org-plus-contrib" . "https://orgmode.org/elpa/") t)


(package-initialize)

(when (memq window-system '(mac ns x))
  (package-install 'exec-path-from-shell)
  (exec-path-from-shell-initialize))

(when (not package-archive-contents)
    (package-refresh-contents))

(unless (package-installed-p 'use-package)
  (package-install 'use-package))

(setq use-package-always-ensure t)

(if (not (package-installed-p 'use-package))
    (progn
      (package-refresh-contents)
      (package-install 'use-package)))

(require 'use-package)

;; TODO Needs organization
;; Dashboard
(load-user-file "dashboard.el")
;; Toolbar
(load-user-file "tool-bar.el")
;; All the icons
(load-user-file "all-the-icons.el")
;; Treemacs
(load-user-file "treemacs.el")
;; Projectile
(load-user-file "projectile.el")
;; Tabs
(load-user-file "tabs.el")
;; Ace Window
(load-user-file "ace.el")
;; Company mode
(load-user-file "company.el")
;; LSP
(load-user-file "lsp-mode.el")
;; Web
(load-user-file "web-mode.el")
;; Utils
(load-user-file "utils.el")
;; Ligatures
(load-user-file "ligatures.el")
;; Vertico
(load-user-file "vertico.el")
;; Spotify
(load-user-file "spotify.el")
;; Docker
(load-user-file "docker.el")
;; Kubernetes
(load-user-file "kubernetes.el")
;; Org-bars
(load-user-file "org-bars.el")
;; Hooks

(add-hook 'prog-mode-hook 'display-line-numbers-mode)
(add-hook 'org-mode-hook 'display-line-numbers-mode)
(add-hook 'org-mode-hook #'org-bars-mode)
(add-hook 'prog-mode-hook 'highlight-indent-guides-mode)
(add-to-list 'auto-mode-alist '("\\.c\\'" . c-mode))
(add-to-list 'auto-mode-alist '("\\.h\\'" . c-mode))
(add-to-list 'auto-mode-alist '("\\.cpp\\'" . c++-mode))
(add-hook 'c-mode-hook 'flycheck-mode)
(add-hook 'c-mode-hook 'lsp)
(add-hook 'c-mode-hook 'yas-minor-mode)
(add-hook 'c++-mode-hook 'lsp)
(add-hook 'after-init-hook 'global-color-identifiers-mode)
(add-hook 'prog-mode-hook 'auto-composition-mode)
;; Ligatures fuck up C-mode...
(add-hook 'c-mode-hook 'auto-composition-mode -1)
(add-hook 'prog-mode-hook #'rainbow-mode)
(add-hook 'prog-mode-hook #'rainbow-delimiters-mode)


;; Modes

(which-key-mode)
(electric-pair-mode 1)
(doom-modeline-mode 1)
(treemacs-resize-icons 16)
(hl-line-mode 1)
(menu-bar-mode 1)
(tool-bar-mode 1)
(company-mode 1)
(yas-minor-mode 1)
(toggle-truncate-lines 1)
(global-auto-composition-mode -1)
(centaur-tabs-mode 1)

;; Astyle
(load-user-file "astyle.el")
;; Tramp sudo
(load-user-file "tramp.el")

(require 'ox-extra)
(ox-extras-activate '(latex-header-blocks ignore-headlines))

(add-to-list 'default-frame-alist '(font . "Cascadia Code PL 15" ))
