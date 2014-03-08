;;;; @ C++ Mode
(defun add-c++-mode-common-conf ()
  (c-set-style "gnu")
  (show-paren-mode t)
  (setq-default c++-basic-offset 2)
  (setq-default tab-width 2)
  (setq-default indent-tabs-mode nil)
  (setq-default c++-auto-newline t)
  (setq-default c++-tab-always-indent t))
(add-hook 'c++-mode-common-hook 'add-c++-mode-common-conf)

(add-to-list 'auto-mode-alist '("\\.cpp?$" . c++-mode))