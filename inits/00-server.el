;;;; @ Server
(require 'server)
(unless (server-running-p)
  (server-start))
(defalias 'exit 'save-buffer-kill-emacs)
(remove-hook 'kill-buffer-query-functions 'server-kill-buffer-query-function)
