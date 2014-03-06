;;;; @ Editing Setting
;; タブ幅
(setq tab-width 2)

;; 全てスペース
(setq-default indent-tabs-mode nil)

;; 行間
(setq-default line-spacing 0)

;; 行末に空白があると警告
(setq show-trailing-whitespace t)

;; リージョンの色
(set-face-background 'region "steel blue")

;; 自動改行
(setq-default auto-fill-mode t)

;; マウス中ボタンでペースト時、カーソル位置にペースト
(setq mouse-yank-at-point t)

;; OSのクリップボードと連携
(setq x-select-enable-clipboard t)

;; [yes or no] --> [y or n]
(fset 'yes-or-no-p 'y-or-n-p)

;; 対応する括弧の強調
(show-paren-mode t)
(setq show-paren-delay 0)
(setq show-paren-style 'mixed)
(set-face-background 'show-paren-match-face "grey")
(set-face-foreground 'show-paren-match-face "black")

;; 自動括弧補完
(require 'cursor-in-brackets)
(global-cursor-in-brackets-mode t)
(require 'flex-autopair)
(flex-autopair-mode 1)

;; 現在行のハイライト
(defface my-hlline-face
  '((((class color) (background dark))  (:background "gray15"))
    (((class color) (background light)) (:background "gray15"))
    (t (:bold t)))
  nil :group 'my-faces)
(setq hl-line-face 'my-hlline-face)
(global-hl-line-mode t)

;; ブロック
(require 'fold-dwim)
(require 'hideshow)

(dolist (hook
         '(emacs-lisp-mode-hook
           c-mode-common-hook
           python-mode-hook
           php-mode-hook
           ruby-mode-hook
           js2-mode-hook
           css-mode-hook
           apples-mode-hook))
  (add-hook hook 'hs-minor-mode))

(global-set-key (kbd "M-@") 'fold-dwim-toggle)   ;; 開閉
(global-set-key (kbd "M-[") 'fold-dwim-show-all) ;; 全て開く
(global-set-key (kbd "M-]") 'fold-dwim-hide-all) ;; 全て閉じる

;; Undo Redo
(require 'undo-tree)
(global-undo-tree-mode)
(require 'undohist)
(undohist-initialize)