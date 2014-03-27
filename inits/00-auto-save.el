;;;; @ Backup Files
;;;;   http://dan-project.blog.so-net.ne.jp/2012-06-04
(setq make-backup-files t)

;; Set directory that save backup filesk
(setq backup-directory-alist
      (cons (cons "\\.*$" (expand-file-name "~/.emacs.d/etc/backup")) backup-directory-alist))


;;;; @ Auto Save Files
;;;;   http://dan-project.blog.so-net.ne.jp/2012-06-04
(setq auto-save-list-file-name nil)
(setq auto-save-list-file-prefix nil)
