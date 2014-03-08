;;;; http://www.gfd-dennou.org/member/uwabami/cc-env/EmacsBasic.html
;;;; @ Load Path
(defun add-to-load-path (&rest paths)
  (let (path)
    (dolist (path paths paths)
      (let ((default-directory (expand-file-name (concat user-emacs-directory path))))
        (add-to-list 'load-path default-directory)
        (if (fboundp 'normal-top-level-add-subdirs-to-load-path)
            (normal-top-level-add-subdirs-to-load-path))))))

;; load-pathの追加
(add-to-load-path "elisp")


;;;; http://fukuyama.co/emacsd
;;;; http://www.rubyist.net/~rubikitch/archive/init-loader-x.el
;;;; @ Init Loader
(require 'init-loader-x)

;; 設定ファイルのあるフォルダを指定
(init-loader-load "~/.emacs.d/inits")

;; emacs起動時にエラーを報告する
(setq init-loader-show-log-after-init t)


;;;; http://www.gfd-dennou.org/member/uwabami/cc-env/EmacsBasic.html
;;;; @ After Init
(defun message-startup-time ()
  (message "Init time: %d msec"
	   (+ (* (- (nth 1 after-init-time) (nth 1 before-init-time)) 1000)
	      (/ (- (nth 2 after-init-time) (nth 2 before-init-time)) 1000))))

;; 起動時の時間を計測
(add-hook 'after-init-hook 'message-startup-time)