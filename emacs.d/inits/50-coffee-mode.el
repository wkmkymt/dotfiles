;;;; @ CoffeeScript Mode
(require 'coffee-mode)

(defun add-coffee-common-conf ()
  (setq tab-width 2)
  (setq coffee-tab-width 2))
(add-hook 'coffee-mode-hook 'add-coffee-common-conf)

(add-to-list 'auto-mode-alist '("\\.coffee$" . coffee-mode))
