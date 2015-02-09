;;;; @ Coding System
;;;;   http://www.ep.sci.hokudai.ac.jp/~epnetfan/tebiki/server-editor/emacs20.html
(coding-system-put 'utf-8-unix 'category 'utf-8-unix)
(set-language-info "Japanese" 'coding-priority
                   (cons 'utf-8-unix (get-language-info "Japanese" 'coding-priority)))
(set-language-environment "Japanese")
(set-default-coding-systems 'utf-8-unix)
(set-terminal-coding-system 'utf-8-unix)
(set-keyboard-coding-system 'utf-8-unix)
(set-buffer-file-coding-system 'utf-8-unix)
(setq buffer-file-coding-system 'utf-8-unix)
(auto-compression-mode t)


;;;; @ iBus
;;;;   http://skalldan.wordpress.com/2012/05/11/emacs-ibus-mozc-%E3%81%A7%E6%97%A5%E6%9C%AC%E8%AA%9E%E5%85%A5%E5%8A%9B/
(require 'mozc)
(set-language-environment "Japanese")
(setq default-input-method "japanese-mozc")

;; Show window for cursor position
;(setq mozc-candidate-style 'overlay)
(setq mozc-candidate-style 'echo-area)

;; Change color by IBus state
;(setq ibus-cursor-color '("#ffaa00" "#eeeeee" "#00aaaa"))

;; Keybind
(global-set-key (kbd "C-SPC") 'mozc-mode)
(global-set-key (kbd "<zenkaku-hankaku>") 'mozc-mode)
