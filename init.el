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

(package-initialize)

(when (memq window-system '(mac ns x))
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

;; Dashboard
(load-user-file "dashboard.el")
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
;; Java
(load-user-file "java-lsp.el")
(load-user-file "lsp-java-lombok.el")
;; Web
(load-user-file "web-mode.el")
;; Utils
(load-user-file "utils.el")
;; Ligatures
(load-user-file "ligatures.el")
;; Toolbar
(load-user-file "tool-bar.el")
;; Vertico
(load-user-file "vertico.el")
;; Spotify
(load-user-file "spotify.el")
;; Docker
(load-user-file "docker.el")
;; Org-bars
(load-user-file "org-bars.el")
;; Elixir
(load-user-file "elixir.el")
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
(centaur-tabs-mode -1) ;; Disabled by default

;; Astyle
(load-user-file "astyle.el")
;; Tramp sudo
(load-user-file "tramp.el")
;; PlantUML
(load-user-file "plantuml.el")

(require 'ox-extra)
(ox-extras-activate '(latex-header-blocks ignore-headlines))


(add-to-list 'default-frame-alist '(font . "Cascadia Code PL 14" ))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(exec-path-from-shell org-sidebar vs-dark-theme vscode-icon dap-java yasnippet which-key vertico use-package treemacs-projectile treemacs-persp treemacs-magit treemacs-icons-dired treemacs-evil smex plantuml-mode org-plus-contrib orderless ns-auto-titlebar lsp-ui lsp-java js2-mode highlight-symbol highlight-indent-guides function-args flycheck doom-themes doom-modeline dashboard company-quickhelp company-prescient color-identifiers-mode centaur-tabs all-the-icons-dired)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
