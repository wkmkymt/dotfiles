;;;; @ Emmet mode
;;;; http://qiita.com/ironsand/items/55f2ced218949efbb1fb
;;;; http://drumken.blog8.fc2.com/blog-entry-360.html
;;;; https://github.com/smihica/emmet-mode#html-abbreviations
(require 'emmet-mode)

;; Use all markup languages and css
(add-hook 'web-mode-hook 'emmet-mode)
(add-hook 'sgml-mode-hook 'emmet-mode)
;(add-hook 'css-mode-hook 'emmet-mode)

;; indent
(add-hook 'emmet-mode-hook (lambda () (setq emmet-indentation 2)))

;; Move cursor between quotes
(setq emmet-move-cursor-between-quotes t)