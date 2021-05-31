
(use-package hydra
  :straight t
  :defer 2.5)

(load-file (concat user-emacs-directory "other-settings/hydra-modal.el"))

(defhydra hydra-project (:color teal
				:hint nil)
  "
  _f_: find-file  _g_: regexp  _e_: eshell   _G_: interactive regexp
  _c_: compile    _d_: dired   _r_: replace  _&_: async shell
  _b_: buffers    _p_: projects            ^^_k_: kill buffer
  "
  ("q" nil "quit")
  ("f" project-find-file)
  ("g" project-find-regexp)
  ("b" project-switch-to-buffer)
  ("k" project-kill-buffers)
  ("G" project-search)
  ("r" project-query-replace-regexp)
  ("d" project-dired)
  ("e" project-eshell)
  ("c" project-compile)
  ("p" project-switch-project)
  ("&" project-async-shell-command))

(global-set-key (kbd "C-c P") 'hydra-project/body)

(defhydra hydra-ide (:color teal
			    :hint nil)
  ("q" nil "quit")
  ("l" hydra-lsp/body "lsp" :column "IDE features")
  ("d" hydra-dumb-jump/body "dumb-jump"))

(global-set-key (kbd "C-c i") 'hydra-ide/body)


(defhydra hydra-lsp (:exit t :hint nil)
  "
 Buffer^^               Server^^                   Symbol
-------------------------------------------------------------------------------------
 [_f_] format           [_M-r_] restart            [_d_] declaration  [_i_] implementation  [_o_] documentation
 [_m_] imenu            [_S_]   shutdown           [_D_] definition   [_t_] type            [_r_] rename
 [_x_] execute action   [_M-s_] describe session   [_R_] references   [_s_] signature"
  ("d" lsp-find-declaration)
  ("D" lsp-ui-peek-find-definitions)
  ("R" lsp-ui-peek-find-references)
  ("i" lsp-ui-peek-find-implementation)
  ("t" lsp-find-type-definition)
  ("s" lsp-signature-help)
  ("o" lsp-describe-thing-at-point)
  ("r" lsp-rename)

  ("f" lsp-format-buffer)
  ("m" lsp-ui-imenu)
  ("x" lsp-execute-code-action)

  ("M-s" lsp-describe-session)
  ("M-r" lsp-restart-workspace)
  ("S" lsp-shutdown-workspace))

(defhydra hydra-tab (:color teal
			    :hint nil)
  "
  tab-bar commands:
  _2_: tab-new  _<tab>_: tab-next      _C-<tab>_: tab-previous  _b_: switch-to-buffer-other-tab
  _u_: tab-undo  _d_: dired-other-tab  _r_: tab-rename         _<RET>_: tab-bar-select-tab-by-name
  "
  ("q" nil "quit")
  ("2" tab-new)
  ("r" tab-rename)
  ("b" switch-to-buffer-other-tab)
  ("f" find-file-other-tab)
  ("<RET>" tab-bar-select-tab-by-name)
  ("C-<tab>" tab-previous)
  ("<tab>" tab-next)
  ("u" tab-undo)
  ("d" dired-other-tab))
