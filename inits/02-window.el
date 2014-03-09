;;;; @ Window System
;; タイトルバー
(setq frame-title-format (concat "%b - Mt.K's Emacs@" system-name))

;; メニューバー
(menu-bar-mode -1)

;; ツールバー
(tool-bar-mode -1)
(tooltip-mode  -1)

;; スクロールバー
;(set-scroll-bar-mode 'right)
;(toggle-scroll-bar -1)
(scroll-bar-mode -1)

;; 行番号
;(global-linum-mode t)
;(setq linum-format "%3d")

;; カーソル座標
(setq line-number-mode   t)
(setq column-number-mode t)

;; OPメッセージ
(setq inhibit-startup-message t)

;; scratchメッセージ
(setq initial-scratch-message "")