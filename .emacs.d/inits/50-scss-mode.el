;;;; @ SCSS Mode
;;;; http://qiita.com/sawamur@github/items/bb50d84af4d01a2eb5c2
;(require 'scss-mode)
(autoload 'scss-mode "scss-mode")

(defun add-scss-common-conf ()
  (setq css-indent-offset 2)
  (setq scss-compile-at-save nil))
(add-hook 'scss-mode-hook 'add-scss-common-conf)

(add-to-list 'auto-mode-alist '("\\.scss$" . scss-mode))
(add-to-list 'auto-mode-alist '("\\.sass$" . scss-mode))
