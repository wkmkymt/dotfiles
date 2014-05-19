;;;; @ Auto Complete
;;;; http://cx4a.org/software/auto-complete/manual.ja.html
(require 'auto-complete-config)
(require 'auto-complete-latex)
(ac-config-default)

;; Set ac path
(add-to-list 'ac-dictionary-directories "~/.emacs.d/etc/ac-dict")
(setq ac-comphist-file "~/.emacs.d/etc/ac-dict/ac-comphist.dat")
(setq ac-l-dict-directory "~/.emacs.d/etc/ac-dict/latex/")

;; ac base setting
(setq ac-auto-start 2)
(setq ac-delay 0)
(setq ac-use-fuzzy t)
(setq ac-use-comphist t)
(setq ac-auto-show-menu 0)
(setq ac-quick-help-delay 0.5)
(setq ac-ignore-case nil)
(setq ac-show-menu-immediately-on-auto-complete t)

;; Set ac-menu key-binding
(setq ac-use-menu-map t)
(define-key ac-menu-map "\C-n" 'ac-next)
(define-key ac-menu-map "\C-p" 'ac-previous)

;; Set ac-menu color
(set-face-foreground 'ac-completion-face "VioletRed1")
(set-face-foreground 'ac-candidate-face  "black")
(set-face-background 'ac-candidate-face  "gainsboro")
(set-face-foreground 'ac-selection-face  "white")
(set-face-background 'ac-selection-face  "steel blue")

;; Add ac-modes
(defmacro append-to-list (to lst)
  `(setq ,to (append ,lst ,to)))

(append-to-list ac-modes
                '(c-mode
                  c++-mode
                  sh-mode
                  makefile-mode
                  web-mode
                  html-mode
                  css-mode
                  scss-mode
                  js2-mode
                  coffee-mode
                  python-mode
                  ruby-mode
                  perl-mode
                  php-mode
                  java-mode
                  sql-mode
                  latex-mode
                  yatex-mode
                  emacs-lisp-mode
                  jinja2-mode))
