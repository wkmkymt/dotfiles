;;;; @ Auto Complete
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/etc/ac-dict")
(setq ac-comphist-file "~/.emacs.d/etc/ac-dict/ac-comphist.dat")
(ac-config-default)

(setq ac-auto-start 2)
(setq ac-delay 0)
(setq ac-use-fuzzy t)
(setq ac-use-comphist t)
(setq ac-auto-show-menu 0)
(setq ac-quick-help-delay 0.5)
(setq ac-ignore-case nil)
(setq ac-show-menu-immediately-on-auto-complete t)

;; メニューの選択切り替え
(setq ac-use-menu-map t)
(define-key ac-menu-map "\C-n" 'ac-next)
(define-key ac-menu-map "\C-p" 'ac-previous)

;; 色設定
(set-face-foreground 'ac-completion-face "VioletRed1")
(set-face-foreground 'ac-candidate-face  "black")
(set-face-background 'ac-candidate-face  "gainsboro")
(set-face-foreground 'ac-selection-face  "white")
(set-face-background 'ac-selection-face  "steel blue")