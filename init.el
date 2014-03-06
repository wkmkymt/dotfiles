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
(setq inits_dir (expand-file-name "~/.emacs.d/inits"))
(init-loader-load inits_dir)

;; emacs起動時にエラーを報告する
(setq init-loader-show-log-after-init t)