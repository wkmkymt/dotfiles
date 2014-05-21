;;;; @ Language
;;;;   http://www.ep.sci.hokudai.ac.jp/~epnetfan/tebiki/server-editor/emacs20.html
(set-language-environment "Japanese")
(auto-compression-mode t)


;;;; @ Coding System
;;;;   http://www.ep.sci.hokudai.ac.jp/~epnetfan/tebiki/server-editor/emacs20.html
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-buffer-file-coding-system 'utf-8)
(setq buffer-file-coding-system 'utf-8)
(prefer-coding-system 'utf-8)
(set-default-coding-systems 'utf-8)
(setq file-name-coding-system 'utf-8)


;;;; @ iBus
;;;;   http://skalldan.wordpress.com/2012/05/11/emacs-ibus-mozc-%E3%81%A7%E6%97%A5%E6%9C%AC%E8%AA%9E%E5%85%A5%E5%8A%9B/
;; (require 'ibus)
;; (add-hook 'after-init-hook 'ibus-mode-on)

;; ;; Show mini-buffer
;; (setq-default mozk-candidate-style 'echo-area)

;; ;; Show window for cursor position
;; (setq ibus-prediction-window-position t)

;; ;; Change color by IBus state
;; (setq ibus-cursor-color '("#ffaa00" "#eeeeee" "#00aaaa"))