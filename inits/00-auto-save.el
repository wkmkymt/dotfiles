;;;; @ Backup Files
(setq make-backup-files t)
(setq backup-directory-alist
      (cons (cons "\\.*$" (expand-file-name "~/.emacs.d/backup")) backup-directory-alist))

;;;; @ Auto Save Files
(setq auto-save-list-file-prefix nil)