;;;; @ Auto Complete
(when (require 'auto-complete-config nil t)
  (add-to-list 'ac-dictionary-directories "~/.emacs.d/elisp/auto-complete/dict")
  (setq ac-comphist-file "~/.emacs.d/elisp/auto-complete/ac-comphist.dat")
	(setq ac-auto-show-menu t)
	(setq ac-show-menu-immediately-on-auto-complete t)
	(setq ac-use-fuzzy t)
	(setq ac-use-comphist t)
  (setq ac-ignore-case nil)
  (ac-config-default))

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