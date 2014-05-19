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
