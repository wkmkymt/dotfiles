;;;; @ Multi Term
(require 'multi-term)

;; ShellのPath指定
(setq multi-term-program "/bin/bash")

;; キーバインド
(defun add-term-mode-conf ()
  (let* ((key-and-func
          '(((kbd "C-h")   term-send-backspace)
            ((kbd "C-y")   term-paste)
            ((kbd "C-S-p") multi-term-prev)
            ((kbd "C-S-n") multi-term-next))))))
(add-hook 'term-mode-hook 'add-term-mode-conf)

;; Shellの色指定
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