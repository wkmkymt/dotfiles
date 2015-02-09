;;;; @ JavaScript Mode
;;;; http://blog.ainam.me/2011/12/13/emacs-js2-mode-indent/
(autoload 'js2-mode "js2-mode" nil t)

(defun add-js-common-conf ()
  (setq-default js2-basic-offset 2)
  (setq-default indent-tabs-mode nil))
(add-hook 'js2-mode-hook 'add-js-common-conf)

(add-to-list 'auto-mode-alist '("\\.js?$" . js2-mode))
