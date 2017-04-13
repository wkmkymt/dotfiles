;;;; @ Tab Width
(setq tab-width 2)


;;;; @ Tab Mode
(setq-default indent-tabs-mode nil)


;;;; @ Line-Space
(setq-default line-spacing 0)


;;;; @ White Space
;; Warning if there is a whitespace at the end of the line
(setq-default show-trailing-whitespace t)
(set-face-background 'trailing-whitespace "#fa0")

;; Delete whitespace before saving
(add-hook 'before-save-hook 'delete-trailing-whitespace)


;;;; @ Region
;(set-face-background 'region "steel blue")


;;;; @ Cursor
;; Paste the cursor position
(setq mouse-yank-at-point t)

;; Cursor style
(setq cursor-type 'box)

;; Cursor color
;(set-cursor-color "white")


;;;; @ Auto Fill
(setq-default auto-fill-mode t)


;;;; @ Clipboard
;; Cooperation the clipboard between OS
(setq x-select-enable-clipboard t)


;;;; @ Scroll
(setq scroll-conservatively 35)
(setq scroll-margin 0)
(setq scroll-step 1)


;;;; @ Parentheses
;; Emphasize the matching parenthesis
;; http://d.hatena.ne.jp/syohex/20110331/1301584188
(show-paren-mode t)
(setq-default show-paren-delay 0)
(setq-default show-paren-style 'mixed)
(set-face-background 'show-paren-match-face "grey")  ;; Parentheses background color
(set-face-foreground 'show-paren-match-face "black") ;; Parentheses foreground color

;; Auto parentheses completion
;; http://d.hatena.ne.jp/yascentur/20130526/1369550512
;; (require 'cursor-in-brackets)
;; (global-cursor-in-brackets-mode t)
(require 'flex-autopair)
(flex-autopair-mode 1)


;;;; @ Highlight
;;;; http://blog.w32.jp/2012/11/emacs_15.html
(global-hl-line-mode t)
;(defface my-hlline-face
;  '((((class color) (background dark))  (:background "#338877")) ;; Highlight background color
;    (((class color) (background light)) (:background "#338877")) ;; Highlight foreground color
;    (t (:bold t)))
;  nil :group 'my-faces)
;(setq-default hl-line-face 'my-hlline-face)


;;;; @ Block
;;;; http://d.hatena.ne.jp/yuheiomori0718/20111224/1324729713
(require 'fold-dwim)
(require 'hideshow)

;; Add hideshow-mode hook
(defvar my-mode-hooks '(c-mode-hook
                        c++-mode-hook
                        web-mode-hook
                        html-mode-hook
                        css-mode-hook
                        js2-mode-hook
                        python-mode-hook
                        ruby-mode-hook
                        perl-mode-hook
                        php-mode-hook
                        java-mode-hook
                        latex-mode-hook
                        yatex-mode-hook
                        sql-mode-hook
                        emacs-lisp-mode-hook))
(dolist (mode-hook my-mode-hooks)
  (add-hook mode-hook 'hs-minor-mode))

;; Set key-binding
(global-set-key (kbd "M-@") 'fold-dwim-toggle)   ;; Open / Close
(global-set-key (kbd "M-[") 'fold-dwim-show-all) ;; Open  all
(global-set-key (kbd "M-]") 'fold-dwim-hide-all) ;; Close all


;;;; @ Undo and Redo
;;;; http://qiita.com/ShingoFukuyama/items/19b02cd1679a6ea0bfdb
;; undo-tree
(require 'undo-tree)
(global-undo-tree-mode)

;; Set key-binding
(define-key undo-tree-map (kbd "C-z") 'undo-tree-undo)
(define-key undo-tree-map (kbd "C-/") 'undo-tree-redo)

;; undohist
(require 'undohist)

;; Set undohist directory
(setq undohist-directory "~/.emacs.d/etc/undohist")

(undohist-initialize)


;;;; @ Align
;;;; http://d.hatena.ne.jp/supermassiveblackhole/20110223/1298443861
(require 'align)
(add-to-list 'align-rules-list
             '(yatex-table
               (regexp . "\\(\\s-*\\)&")
               (modes  . '(yatex-mode))))
