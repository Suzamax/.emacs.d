(use-package smex)
(use-package vertico
  :init
  (vertico-mode)

  ;; Grow and shrink the Vertico minibuffer
  (setq vertico-resize t)

  ;; Optionally enable cycling for `vertico-next' and `vertico-previous'.
  ;; (setq vertico-cycle t)
  )

;; Use the `orderless' completion style. Additionally enable
;; `partial-completion' for file path expansion. `partial-completion' is
;; important for wildcard support. Multiple files can be opened at once
;; with `find-file' if you enter a wildcard. You may also give the
;; `initials' completion style a try.
(use-package orderless
  :init
  (setq completion-styles '(orderless)
        completion-category-defaults nil
        completion-category-overrides '((file (styles partial-completion)))))
