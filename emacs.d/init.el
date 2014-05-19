;;;; @ Load Path
;;;;   http://www.gfd-dennou.org/member/uwabami/cc-env/EmacsBasic.html
(defun add-to-load-path (&rest paths)
  (let (path)
    (dolist (path paths paths)
      (let ((default-directory (expand-file-name (concat user-emacs-directory path))))
        (add-to-list 'load-path default-directory)
        (if (fboundp 'normal-top-level-add-subdirs-to-load-path)
            (normal-top-level-add-subdirs-to-load-path))))))

;; Set Load-Path
(add-to-load-path "elisp")


;;;; @ Init Loader
;;;;   http://fukuyama.co/emacsd
;;;;   http://www.rubyist.net/~rubikitch/archive/init-loader-x.el
(require 'init-loader-x)

;; Set Init-Loader path
(init-loader-load "~/.emacs.d/inits")

;; Report Error When Emacs Start Up
(setq init-loader-show-log-after-init t)


;;;; @ After Init
;;;;   http://www.gfd-dennou.org/member/uwabami/cc-env/EmacsBasic.html

;; Measure start-up time of Emacs
(defun message-startup-time ()
  (message "Init time: %d msec"
	   (+ (* (- (nth 1 after-init-time) (nth 1 before-init-time)) 1000)
	      (/ (- (nth 2 after-init-time) (nth 2 before-init-time)) 1000))))
(add-hook 'after-init-hook 'message-startup-time)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes (quote ("d309e4c60d2f7a2e17e084ff13f6b056a8f8c5ed8ee4255df08e3f18fd337f13" default)))
 '(term-default-bg-color "gray22")
 '(term-default-fg-color "white"))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(web-mode-comment-face ((t (:foreground "#ff8800"))))
 '(web-mode-css-at-rule-face ((t (:foreground "#66bbff"))))
 '(web-mode-css-pseudo-class-face ((t (:foreground "#44cc44"))))
 '(web-mode-css-rule-face ((t (:foreground "#66bbff"))))
 '(web-mode-doctype-face ((t (:foreground "#66ffff"))))
 '(web-mode-html-attr-name-face ((t (:foreground "#ff88ff"))))
 '(web-mode-html-attr-value-face ((t (:foreground "#ffff88"))))
 '(web-mode-html-tag-face ((t (:foreground "#66bbff"))))
 '(web-mode-server-comment-face ((t (:foreground "#ff8800")))))
