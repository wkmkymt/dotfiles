;;;; @ Auto Async Byte Compile
;;;;   http://www.emacswiki.org/cgi-bin/wiki/download/auto-async-byte-compile.el
(require 'auto-async-byte-compile)
(add-hook 'emacs-lisp-mode-hook 'enable-auto-async-byte-compile-mode)

;; Set file name that desable Auto-Byte-Compile
;(setq auto-async-byte-compile-exclude-files-regexp "")
