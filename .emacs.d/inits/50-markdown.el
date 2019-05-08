;;;; @ Markdown Mode
;;;; http://moonstruckdrops.github.io/blog/2013/03/24/markdown-mode/
(autoload 'markdown-mode "markdown-mode" nil t)

(add-to-list 'auto-mode-alist '("\\.md?$" . markdown-mode))