;;;; @ Package
;;;; http://emacs-jp.github.io/packages/package-management/package-el.html
(require 'package)

;; Set package url
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/"))
(add-to-list 'package-archives  '("marmalade" . "http://marmalade-repo.org/packages/"))

;; Set install directory
(setq package-user-dir "~/.emacs.d/elisp/")

;; Initialize package
(package-initialize)
