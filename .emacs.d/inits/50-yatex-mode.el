;;;; @ YaTeX Mode
;;;; 
(autoload 'yatex-mode "yatex" nil t)

(add-to-list 'auto-mode-alist '("\\.tex?$" . yatex-mode))
