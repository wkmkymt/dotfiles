;;;; Yaml Mode
;;;; http://blog.sanojimaru.com/post/20459365951/emacs-yaml-yaml-mode
(autoload 'yaml-mode "yaml-mode" nil t)

(add-to-list 'auto-mode-alist 
             '("\\.yaml?$" . yaml-mode)
             '("\\.yml?$"  . yaml-mode))