;;;; @ Python Mode
;;;; http://tnt.math.se.tmu.ac.jp/~tetsushi/nzmath/emacs-python-mode.html
(autoload 'python-mode "python-mode" nil t)

(defun add-python-common-conf ()
  (setq tab-width 2)
  (setq indent-level 2)
  (setq python-indent 2)
  (setq indent-tabs-mode nil))
(add-hook 'python-mode-hook 'add-python-common-conf)

(add-to-list 'auto-mode-alist '("\\.py?$" . python-mode))
