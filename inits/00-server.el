;;;; @ Server
;;;;   http://futurismo.biz/archives/1273
;;;;   http://shigemk2.hatenablog.com/entry/20110905/1315199694
;;;;   http://d.hatena.ne.jp/NeoCat/20131108/1383937311
(require 'server)
(unless (server-running-p)
  (server-start))

;; Don't ask when Emacs exit
(remove-hook 'kill-buffer-query-functions 'server-kill-buffer-query-function)

;; Save cursor position
(require 'saveplace)
(setq-default save-place t)
(run-at-time 600 600 'save-place-kill-emacs-hook)