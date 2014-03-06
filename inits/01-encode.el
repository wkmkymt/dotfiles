;;;; http://www.ep.sci.hokudai.ac.jp/~epnetfan/tebiki/server-editor/emacs20.html
;;;; @ Language
(set-language-environment "Japanese")

;; 日本語infoの文字化け対策
(auto-compression-mode t)


;;;; http://www.ep.sci.hokudai.ac.jp/~epnetfan/tebiki/server-editor/emacs20.html
;;;; @ Coding System
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-buffer-file-coding-system 'utf-8)
(setq buffer-file-coding-system 'utf-8)
(prefer-coding-system 'utf-8)
(set-default-coding-systems 'utf-8)
(setq file-name-coding-system 'utf-8)


;;;; @ iBus
(require 'ibus)
(add-hook 'after-init-hook 'ibus-mode-on)