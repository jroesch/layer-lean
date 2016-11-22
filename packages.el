(defconst lean-packages
  '(mmm-mode
    company
    dash-functional
    f
    flycheck
    dash
    (lean-mode :location local)
    ))

(defun lean/init-mmm-mode ())
(defun lean/init-company ())
(defun lean/init-dash-functional ())
(defun lean/init-f ())
(defun lean/init-flycheck ())
(defun lean/init-dash ())

(defun lean/init-lean-mode ()
  (use-package lean-mode
    :defer t
    :mode ("\\.lean\\'" . lean-mode)
    :load-path
    "/usr/local/share/emacs/site-lisp/lean"
    :config
    (progn
      (spacemacs/set-leader-keys-for-major-mode
       'lean-mode
       "cc" 'lean-std-exe
       "pr" 'lean-server-restart-process
       "pf" 'lean-set-option
       "hh" 'lean-eldoc-documentation-function
       "ht" 'lean-show-type
       "hg" 'lean-show-goal-at-pos
       "hk" 'quail-show-key
       "hi" 'lean-show-id-keyword-info
       "f" 'lean-fill-placeholder
       "gu" 'lean-generate-tags
       "gg" 'lean-find-tag
       "sc" 'lean-eval-cmd))))
