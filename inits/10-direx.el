;;;; @ Direx
(require 'direx-project)

;; Icon設定
(setq direx:leaf-icon   "  "
      direx:open-icon   "▾ "
      direx:closed-icon "▸ ")

;; 表示設定
(push '(direx:direx-mode :position left :width 25 :dedicated t)
      popwin:special-display-config)
(global-set-key (kbd "C-x C-j") 'direx-project:jump-to-project-root-other-window)