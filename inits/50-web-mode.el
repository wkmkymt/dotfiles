;;;; @ HTML Mode
(require 'web-mode)
(defun my-html-common-conf ()
  ()
  )

(add-to-list 'auto-mode-alist '("\\.html?$" . html-mode))