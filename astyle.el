(defun astyle-this-buffer ()
  "Use astyle command to auto format c/c++ code."
  (interactive "r")
  (let* ((original-point (point))) ;; save original point before processing, thanks to @Scony
    (progn
      (if (executable-find "astyle")
          (shell-command-on-region
           (point-min) (point-max)
           (concat
            "astyle"
            " --style=" cc-mode-code-style
            " --indent=spaces=" (number-to-string c-basic-offset)
            " --pad-oper"
            " --pad-header"
            " --break-blocks"
            " --delete-empty-lines"
            " --align-pointer=type"
            " --align-reference=name")
           (current-buffer) t
           (get-buffer-create "*Astyle Errors*") t)
        (message "Cannot find binary \"astyle\", please install first."))
      (goto-char original-point)))) ;; restore original point

(defun astyle-before-save ()
  "Auto styling before saving."
  (interactive)
  (when (member major-mode '(prog-mode))
    (astyle-this-buffer)))

(add-hook 'c-mode-common-hook (lambda () (add-hook 'before-save-hook 'astyle-before-save)))
