;;;; @ Server
;;;;   http://futurismo.biz/archives/1273
;;;;   http://shigemk2.hatenablog.com/entry/20110905/1315199694
(require 'server)
(unless (server-running-p)
  (server-start))

;; Don't ask when Emacs exit
(remove-hook 'kill-buffer-query-functions 'server-kill-buffer-query-function)
