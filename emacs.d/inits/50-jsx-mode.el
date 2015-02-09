;;;; @ JSX Mode
(autoload 'jsx-mode "jsx-mode" nil t)

(defun add-jsx-common-conf ()
  (setq jsx-indent-level 2)
  (setq indent-tabs-mode nil)
  (setq tab-width 2))
(add-hook 'jsx-mode-hook 'add-jsx-common-conf)

;(add-to-list 'auto-mode-alist '("\\.jsx?$" . js2-jsx-mode))
(add-to-list 'auto-mode-alist '("\\.jsx?$" . jsx-mode))
