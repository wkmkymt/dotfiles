;;;;;; -*- coding: utf-8 -*-

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;; ・そのうち整理する     ;;;;;;
;;;;;; ・コピペ元リンクの確認 ;;;;;;
;;;;;; ・init-loaderやめた    ;;;;;;
;;;;;; ・Emacs24に移行        ;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;;;;;;;;;;;;;
;; Language ;;
;;;;;;;;;;;;;;

;; 日本語
(when (equal emacs-major-version 21)
	(require 'un-define))
(set-language-environment "Japanese")

;; 日本語infoの文字化け対策
(auto-compression-mode t)


;;;;;;;;;;;;;;;;;;;
;; Coding System ;;
;;;;;;;;;;;;;;;;;;;

;; @文字コード
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-buffer-file-coding-system 'utf-8)
(setq buffer-file-coding-system 'utf-8)
(prefer-coding-system 'utf-8)
(set-default-coding-systems 'utf-8)
(setq file-name-coding-system 'utf-8)


;;;;;;;;;
;; IME ;;
;;;;;;;;;

;; @iBus
(require 'ibus)
(add-hook 'after-init-hook 'ibus-mode-on)


;;;;;;;;;;;;;;;
;; Load Path ;;
;;;;;;;;;;;;;;;

;; @load-path
(defun add-to-load-path (&rest paths)
  (let (path)
    (dolist (path paths paths)
      (let ((default-directory 
							(expand-file-name (concat user-emacs-directory path))))
        (add-to-list 'load-path default-directory)
        (if (fboundp 'normal-top-level-add-subdirs-to-load-path)
            (normal-top-level-add-subdirs-to-load-path))))))

;; Pathの追加
(add-to-load-path 
 "elisp" ;; elispファイル置き場
 ;; "inits"
 )


;;;;;;;;;;;;;;;;;
;; Init Loader ;;
;;;;;;;;;;;;;;;;;

;; @init-loader
;; (require 'init-loader)

;; initファイル置き場のPath設定
;; (init-loader-load "~/.emacs.d/inits")


;;;;;;;;;;;;
;; Screen ;;
;;;;;;;;;;;;

;; @タイトルバー
(setq frame-title-format
      (concat "%b - Mt.K's Emacs@" system-name))

;; @メニューバー
(menu-bar-mode -1)

;; @ツールバー
(tool-bar-mode -1)
(tooltip-mode -1)

;; @スクロールバー
;; (set-scroll-bar-mode 'right)
(toggle-scroll-bar -1)

;; @行番号
;(global-linum-mode t)
;(setq linum-format "%3d")

;; @カーソル座標
(setq line-number-mode t)
(setq column-number-mode t)

;; @OPメッセージ
(setq inhibit-startup-message t)

;; @scratchメッセージ
(setq initial-scratch-message "")

;; [yes or no] --> [y or n]
(fset 'yes-or-no-p 'y-or-n-p)


;;;;;;;;;;;
;; Direx ;;
;;;;;;;;;;;

(require 'direx-project)
(defun my/dired-jump ()
  (interactive)
  (cond (current-prefix-arg
         (dired-jump))
        ((not (one-window-p))
         (or (ignore-errors
               (direx-project:jump-to-project-root) t)
             (direx:jump-to-directory)))
        (t
         (or (ignore-errors
               (direx-project:jump-to-project-root-other-window) t)
             (direx:jump-to-directory-other-window)))))
(global-set-key (kbd "C-x C-j") 'my/dired-jump)

; Icon設定
(setq direx:leaf-icon   "  "
			direx:open-icon   "▾ "
			direx:closed-icon "▸ ")

; 表示設定
(push '(direx:direx-mode :position right :width 5 :dedicated t)
      popwin:special-display-config)
(global-set-key (kbd "C-x C-j") 'direx:jump-to-directory)


;;;;;;;;;;;;;;;
;; Save File ;;
;;;;;;;;;;;;;;;

;; @バックアップファイル
(setq make-backup-files t)
(setq backup-directory-alist
      (cons (cons "\\.*$" (expand-file-name "~/.emacs.d/backup"))
            backup-directory-alist))

;; @オートセーブリスト
(setq auto-save-list-file-prefix nil)


;;;;;;;;;;;
;; Frame ;;
;;;;;;;;;;;

;; フレーム初期設定
(setq initial-frame-alist
      (append (list
	       '(font               . "-unknown-Ricty-bold-normal-normal-*-14-*-*-*-*-0-iso10646-1")
	       '(foreground-color   . "white")
	       '(background-color   . "grey22")
	       '(border-color       . "grey22")
	       '(mouse-color        . "white")
	       '(cursor-color       . "white")
	       '(alpha              . (85 85))
	       '(width              . 116)
	       '(height             . 55)
	       '(top                . 0)
	       '(left               . 0))
	      initial-frame-alist))
(setq default-frame-alist initial-frame-alist)


;;;;;;;;;;;;
;; Editor ;;
;;;;;;;;;;;;

;; @タブ幅
(setq-default tab-width 2)
(setq tab-width 2)
(setq tab-stop-list '(2 4 6 8 10 12 14 16 18 20 22 24 26 28 30
                      32 34 36 38 40 42 44 46 48 50 52 54 56 58 60
                      62 64 66 68 70 72 74 76 78 80 82 84 86 88 90
                      92 94 96 98 100 102 104 106 108 110 112 114 116 118 120))

;; @行間
(setq-default line-spacing 0)

;; @選択領域の色
(set-face-background 'region "steel blue")

;; @対応する括弧の色
(show-paren-mode 1)
(setq show-paren-style 'mixed)
(set-face-background 'show-paren-match-face "grey")
(set-face-foreground 'show-paren-match-face "black")

;; @現在行のハイライト
(defface my-hlline-face
  '((((class color)
			(background dark))
		 (:background "gray15"))
    (((class color)
			(background light))
		 (:background "gray15"))
		(t
		 (:bold t)))
	nil :group 'my-faces)
(setq hl-line-face 'my-hlline-face)
(global-hl-line-mode)

;; @自動改行
(setq-default auto-fill-mode t)

;; @自動括弧補完
(when (require 'cursor-in-brackets nil t)
  (global-cursor-in-brackets-mode t))
(when (require 'flex-autopair nil t)
  (flex-autopair-mode 1))

;; @Undo Redo
(when (require 'undo-tree nil t)
  (global-undo-tree-mode))
(when (require 'undohist nil t)
  (undohist-initialize))

;; @ブロック
(when (require 'fold-dwim nil t)
  (require 'hideshow nil t)

  (let ((hook))
    (dolist (hook
             '(emacs-lisp-mode-hook
               c-mode-common-hook
               python-mode-hook
               php-mode-hook
               ruby-mode-hook
               js2-mode-hook
               css-mode-hook
               apples-mode-hook))
      (add-hook hook 'hs-minor-mode))))

;; Open / Close ショートカットキー
(global-set-key (kbd "M-@") 'fold-dwim-toggle)
(global-set-key (kbd "M-[") 'fold-dwim-show-all)
(global-set-key (kbd "M-]") 'fold-dwim-hide-all)


;;;;;;;;;;;
;; Shell ;;
;;;;;;;;;;;

;; @Multi Term
(require 'multi-term)

;; ShellのPath指定
(setq multi-term-program "/bin/bash")

(add-hook 'term-mode-hook
					'(lambda ()
						 (let* ((key-and-func
										 '(((kbd "C-h")   term-send-backspace)
											 ((kbd "C-y")   term-paste)
											 ((kbd "C-S-p") multi-term-prev)
											 ((kbd "C-S-n") multi-term-next)))))))

(custom-set-variables
 '(term-default-bg-color "gray22")
 '(term-default-fg-color "white"))
(setq ansi-term-color-vector
			[unspecified "#00f" ;; 
                   "#f00" ;; 圧縮ファイル
                   "#4f4" ;; USER, 実行ファイル
                   "#0f0" ;; 
									 "#5af" ;; PATH
									 "#f8f" ;; 画像ファイル
									 "#0ff" ;; ディレクトリ
									 "#fff" ;; その他ファイル
									 ])

(require 'bash-completion)
(bash-completion-setup)


;;;;;;;;;;;;;;;;;;;
;; Auto Complete ;;
;;;;;;;;;;;;;;;;;;;

;; @Auto Complete
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


;;;;;;;;;;;;;;;;;;
;; Key Bindings ;;
;;;;;;;;;;;;;;;;;;

;; @Mouse Wheel
(mouse-wheel-mode)
(setq max-lines (count-lines (point-max) (point-min)))
(global-set-key   [mouse-5] '(lambda () (interactive) (scroll-up   5))) ;; 上スクロール
(global-set-key   [mouse-4] '(lambda () (interactive) (scroll-down 5))) ;; 下スクロール
(global-set-key [S-mouse-5] '(lambda () (interactive) (scroll-up   1))) ;; Shift + 上スクロール
(global-set-key [S-mouse-4] '(lambda () (interactive) (scroll-down 1))) ;; Shift + 下スクロール
(global-set-key [C-mouse-5] '(lambda () (interactive) (scroll-up        ;; Ctrl  + 上スクロール
																											 (/ (count-lines (point-max) (point-min)) 4))))
(global-set-key [C-mouse-4] '(lambda () (interactive) (scroll-down      ;; Ctrl  + 下スクロール
																											 (/ (count-lines (point-max) (point-min)) 4))))

;; @Global Key
(global-set-key (kbd "C-h")        'delete-backward-char) ;; Back Space
(global-set-key (kbd "C-c k")      'kill-ring-save)       ;; 削除せずにコピー
(global-set-key (kbd "<C-return>") 'super-new-line)       ;; 改行

(global-set-key (kbd "M-p")   'scroll-down)         ;; 1画面上に移動
(global-set-key (kbd "M-n")   'scroll-up)           ;; 1画面下に移動
(global-set-key (kbd "C-x p") 'beginning-of-buffer) ;; ファイル先頭に移動
(global-set-key (kbd "C-x n") 'end-of-buffer)       ;; ファイル後尾に移動

(global-set-key (kbd "C-M-;") 'next-buffer)     ;; 次のバッファへ切り替え
(global-set-key (kbd "C-M-:") 'previous-buffer) ;; 前のバッファへ切り替え
(global-set-key (kbd "C-;")   'other-window)    ;; 別のウィンドウに移動
(global-set-key (kbd "C-M-f") 'windmove-right)  ;; 右のウィンドウに移動
(global-set-key (kbd "C-M-b") 'windmove-left)   ;; 左のウィンドウに移動
(global-set-key (kbd "C-M-n") 'windmove-down)   ;; 下のウィンドウに移動
(global-set-key (kbd "C-M-p") 'windmove-up)     ;; 上のウィンドウに移動

(global-set-key (kbd "C->") 'enlarge-window-horizontally) ;; ウィンドウサイズを横に広げる
(global-set-key (kbd "C-<") 'shrink-window-horizontally)  ;; ウィンドウサイズを横に縮める
(global-set-key (kbd "C-}") 'enlarge-window)              ;; ウィンドウサイズを横に広げる
(global-set-key (kbd "C-{") 'shrink-window)               ;; ウィンドウサイズを横に縮める

(global-set-key (kbd "<M-return>") 'multi-term) ;; MultiTermの起動


;;;;;;;;;;;
;; Macro ;;
;;;;;;;;;;;

;; 書式の途中からでも改行
(fset 'super-new-line [?\C-e return])
;; pythonコメント
(fset 'triple-quotes   [?\" ?\" ?\" ?\C-f ?\C-f return ?\C-p ?\C-e])


;;;;;;;;;;;;;;;
;; Templates ;;
;;;;;;;;;;;;;;;

;; @雛形ファイル
(setq auto-insert-directory "~/.emacs.d/template/")
(setq auto-insert-query nil)
(define-auto-insert "\\.html\\'" "init.html")
(define-auto-insert "\\.css\\'"  "init.css")
(define-auto-insert "\\.jade\\'" "init.jade")
(define-auto-insert "\\.tex\\'"  "init.tex")
(define-auto-insert "\\.c\\'"    "init.c")
(define-auto-insert "\\.cpp\\'"  "init.cpp")
(define-auto-insert "Makefile"   "init.makefile")
(define-auto-insert "\\.py\\'"   "init.py")
(define-auto-insert "\\.rb\\'"   "init.rb")
(define-auto-insert "\\.pl\\'"   "init.pl")
(define-auto-insert "\\.el\\'"   "init.el")
(add-hook 'find-file-hooks 'auto-insert)


;;;;;;;;;;
;; Mode ;;
;;;;;;;;;;

;; @c mode
(defun add-c-mode-common-conf ()
	(c-set-style "gnu")
  (setq tab-width 2)
	(defvar c-auto-newline "")
	(setq c-auto-newline t)
  (setq indent-tabs-mode t))
(add-hook 'c-mode-common-hook 'add-c-mode-common-conf)

(add-to-list 'auto-mode-alist '("\\.c?$" . c-mode))

;; @c++ mode
(defun add-c++-mode-common-conf ()
  (setq tab-width 2)
	(defvar c++-auto-newline "")
	(setq c++-auto-newline t)
	(defvar c++-tab-always-indent "")
	(setq c++-tab-always-indent t)
  (setq indent-tabs-mode t))
(add-hook 'c++-mode-common-hook 'add-c++-mode-common-conf)

(add-to-list 'auto-mode-alist '("\\.cpp?$" . c++-mode))

;; @python mode
(defun add-python-mode-conf ()
	(defvar python-mode-map "")
	(define-key python-mode-map (kbd "\C-m") 'newline-and-indent)
	(define-key python-mode-map (kbd "M-\"") 'triple-quotes))
(add-hook 'python-mode-hook 'add-python-mode-conf)

(add-to-list 'auto-mode-alist '("\\.py?$" . python-mode))

;; @js2 mode
(autoload 'js2-mode "js2-mode" nil t)
(defun add-js2-mode-conf ()
	(defvar js2-basic-offset "")
	(setq js2-basic-offset 2))
(add-hook 'js2-mode-hook 'add-js2-mode-conf)

(add-to-list 'auto-mode-alist '("\\.js?$" . js2-mode))

;; @jinja2 Mode
(when (require 'jinja2-mode nil t)
  (autoload 'jinja2-mode "jinja2-mode" t)
  (add-to-list 'auto-mode-alist '("\\.html?$" . jinja2-mode)))

;; @jade Mode
(when (require 'jade-mode nil t)
  (autoload 'jade-mode "jade-mode" t)
  (add-to-list 'auto-mode-alist '("\\.jade?$" . jade-mode)))
