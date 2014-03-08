;;;; @ Jinja2 Mode
(autoload 'jinja2-mode "jinja2-mode" nil t)
;(setq-default ac-modes (append '(js2-mode)))
(add-to-list 'auto-mode-alist '("\\.html?$" . jinja2-mode))