;;;; http://fukuyama.co/emacsd
;;;; @ Auto Byte Compile
;; initsフォルダのみ保存時に自動バイトコンパイル
;(defun auto-save-byte-compile-file ()
;  (interactive)
;  (when (or (equal default-directory inits_dir)
;            (equal default-directory (abbreviate-file-name inits_dir)))
;    (byte-compile-file buffer-file-name t)
;    ))
;(add-hook 'emacs-lisp-mode-hook
;  (lambda ()
;    (add-hook 'after-save-hook 'auto-save-byte-compile-file nil t)))


;;;; http://www.emacswiki.org/cgi-bin/wiki/download/auto-async-byte-compile.el
;;;; @ Auto Async Byte Compile
(require 'auto-async-byte-compile)
;; バイトコンパイルを無効にするファイル名
;(setq auto-async-byte-compile-exclude-files-regexp "")

;; 自動バイトコンパイル
(add-hook 'emacs-lisp-mode-hook 'enable-auto-async-byte-compile-mode)