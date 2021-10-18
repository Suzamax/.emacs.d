(require 'ob-plantuml)
(use-package plantuml-mode
  :init
  (setq plantuml-default-exec-mode 'jar)
  (setq plantuml-jar-path "/mnt/c/Users/ratio/plantuml.jar")
  (setq org-plantuml-jar-path (expand-file-name "plantuml.jar" user-init-dir))
  (setq org-startup-with-inline-images t)
  (add-to-list 'org-src-lang-modes '("plantuml" . plantuml))
  (with-eval-after-load 'org
    (org-babel-do-load-languages 'org-babel-load-languages '((plantuml . t)))))
