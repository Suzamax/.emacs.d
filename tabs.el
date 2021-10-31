(use-package centaur-tabs
  :demand
  :config
  (centaur-tabs-mode t)
  :bind
  ("C-<prior>" . centaur-tabs-backward)
  ("C-<next>" . centaur-tabs-forward))
(centaur-tabs-headline-match)
(setq centaur-tabs-style "rounded")
(setq centaur-tabs-height 32)
(setq centaur-tabs-set-icons t)

