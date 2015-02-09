;;;; @ C Mode
;;;; http://at-aka.blogspot.jp/2006/12/emacs-c.html
;;;; http://www.02.246.ne.jp/~torutk/cxx/emacs/mode_extension.html
(defun add-c-mode-common-conf ()
  (c-set-style "gnu")
  (show-paren-mode t)
  (setq-default c-basic-offset 2)
  (setq-default tab-width 2)
  (setq-default indent-tabs-mode nil)
  (setq-default c-auto-newline t)
  (setq-default c-tab-always-indent t)
  )
(add-hook 'c-mode-common-hook 'add-c-mode-common-conf)

(add-to-list 'auto-mode-alist '("\\.c?$" . c-mode))
