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

;; Icon text
(setq direx:leaf-icon   "  "
      direx:open-icon   "▾ "
      direx:closed-icon "▸ ")

;; Display style
(push '(direx:direx-mode :position left :width 25 :dedicated t)
      popwin:special-display-config)

;; Set key-binding
(global-set-key (kbd "C-x C-j") 'my/dired-jump)