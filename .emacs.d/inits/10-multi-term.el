;;;; @ Multi Term
;;;; http://sleepboy-zzz.blogspot.jp/2012/12/emacsmulti-termel.html
(require 'multi-term)

;; Set multi-term path
(setq multi-term-program "/bin/bash")

;; Set key-binding
(global-set-key (kbd "<M-return>") 'multi-term)
(defun add-term-mode-conf ()
  (let* ((key-and-func
          '(((kbd "C-h")   term-send-backspace)
            ((kbd "C-y")   term-paste)
            ((kbd "C-S-p") multi-term-prev)
            ((kbd "C-S-n") multi-term-next))))))
(add-hook 'term-mode-hook 'add-term-mode-conf)

;; Set shell color
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

;; Complement command
(require 'bash-completion)
(bash-completion-setup)
