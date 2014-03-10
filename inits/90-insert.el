;;;; @ Auto Insert
;;;; http://www.math.s.chiba-u.ac.jp/~matsu/emacs/emacs21/autoinsert.html
(load "autoinsert" t)

;; Set auto-insert path
(setq-default auto-insert-directory "~/.emacs.d/etc/template")
(setq-default auto-insert-query nil)

;; Add template setting
(setq auto-insert-alist
      (append '(("\\.html$" . "init.html")
                ("\\.css$"  . "init.css")
                ("\\.jade$" . "init.jade")
                ("\\.tex$"  . "init.tex")
                ("\\.c$"    . "init.c")
                ("\\.cpp$"  . "init.cpp")
                ("Makefile" . "init.mf")
                ("\\.py$"   . "init.py")
                ("\\.rb$"   . "init.rb")
                ("\\.pl$"   . "init.pl")
                ("\\.el$"   . "init.el"))
              auto-insert-alist))
(add-hook 'find-file-hooks 'auto-insert)