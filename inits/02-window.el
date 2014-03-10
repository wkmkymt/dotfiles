;;;; @ Title Bar
(setq frame-title-format (concat "%b - Mt.K's Emacs@" system-name))


;;;; @ Menu Bar
(menu-bar-mode -1)


;;;; @ Tool Bar
(tool-bar-mode -1)
(tooltip-mode  -1)


;;;; @ Scroll Bar
;(set-scroll-bar-mode 'right)
(scroll-bar-mode -1)


;;;; @ Line Number
;(global-linum-mode t)
;(setq linum-format "%3d")


;;;; @ Cursor Coordinates 
(setq line-number-mode   t)
(setq column-number-mode t)


;;;; @ OP Message
(setq inhibit-startup-message t)


;;;; @ Scratch Message
(setq initial-scratch-message "")