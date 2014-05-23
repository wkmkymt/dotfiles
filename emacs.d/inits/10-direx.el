;;;; @ Direx
;;;; http://d.hatena.ne.jp/syohex/20130202/1359814263
(require 'direx-project)

(defun my/dired-jump ()
  (interactive)
  (cond (current-prefix-arg
         (dired-jump))
        ((not (one-window-p))
         (or (ignore-errors
               (direx-project:jump-to-project-root) t)
             (direx:jump-to-directory)))
        (t
         (or (ignore-errors
               (direx-project:jump-to-project-root-other-window) t)
             (direx:jump-to-directory-other-window)))))

;; Set key-binding
(global-set-key (kbd "C-x C-j") 'my/dired-jump)

;; Icon text
(setq direx:leaf-icon   "  "
      direx:open-icon   "▾ "
      direx:closed-icon "▸ ")
