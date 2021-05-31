;; Completion
(use-package ivy
  :straight t
  :diminish ivy-mode
  :defer 0.9
  :config
  (ivy-mode))

(use-package swiper
  :straight t
  :after ivy
  :bind (("C-s" . swiper)
	 ("C-M-s" . swiper-thing-at-point)))

(use-package counsel
  :straight t
  :after ivy
  :diminish counsel-mode
  :config
  (counsel-mode))

(use-package ivy-avy
  :straight t
  :after (ivy avy))

(use-package ivy-prescient
  :straight t
  :after counsel
  :config
  (ivy-prescient-mode)
  (setq ivy-initial-inputs-alist ivy-prescient--old-initial-inputs-alist))

(use-package smartparens
  :straight t
  :defer 5.1
  :diminish smartparens-mode
  :config
  (smartparens-global-mode))

(use-package highlight-parentheses
  :straight t
  :defer 5.3
  :diminish highlight-parentheses-mode
  :config (global-highlight-parentheses-mode))

(defvar show-paren-delay 0)
(show-paren-mode t)
