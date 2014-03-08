;;;; @ Python Mode
(autoload 'python-mode "python-mode" nil t)

(defun add-python-common-conf ()
  (setq-default tab-width 2)
  (setq-default indent-tabs-mode nil))
(add-hook 'python-mode-hook 'add-python-common-conf)

(add-to-list 'auto-mode-alist '("\\.py?$" . python-mode))