;;;; @ JavaScript Mode
(autoload 'js2-mode "js2-mode" nil t)

(defun add-js-common-conf ()
  (require 'js)
  (setq-default js-indent-level 2)
  (setq-default js-expr-indent-offset 2)
  (setq-default indent-tabs-mode nil)
  (set (make-local-variable 'indent-line-function) 'js-indent-line))
(add-hook 'js2-mode-hook 'add-js-common-conf)

(add-to-list 'auto-mode-alist '("\\.js?$" . js2-mode))