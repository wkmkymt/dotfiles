;;;; @ CSS Mode
(autoload 'css-mode "css-mode")

(defun add-css-common-conf ()
  (setq cssm-indent-function #'cssm-c-style-indenter)
  (setq indent-tabs-mode nil))
(add-hook 'css-mode-hook 'add-css-common-conf)

(add-to-list 'auto-mode-alist '("\\.css?$" . css-mode))