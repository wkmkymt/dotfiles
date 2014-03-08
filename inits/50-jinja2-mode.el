;;;; @ Jinja2 Mode
(autoload 'jinja2-mode "jinja2-mode" nil t)
(add-to-list 'ac-modes 'jinja2-mode)
(add-to-list 'auto-mode-alist '("\\.html?$" . jinja2-mode))