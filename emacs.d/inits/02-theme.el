;;;; @ Frame
;;;;   http://www.cozmixng.org/~kou/emacs/dot_emacs
(defvar my-init-frame-alist
  (list
   '(font             . "-unknown-Ricty-bold-normal-normal-*-13-*-*-*-*-0-iso10646-1")
   '(background-color . "#333")
   '(foreground-color . "#eee")
   '(cursor           . "#eee")
   '(width            . 116)
   '(height           . 70)
   '(top              . 0)
   '(left             . 0)))
(setq default-frame-alist (append initial-frame-alist my-init-frame-alist))
(set-frame-parameter (selected-frame) 'alpha '(0.85))


;;;; @ Color Theme
;;;;   http://truongtx.me/2013/03/31/color-theming-in-emacs-24/
;; Set custom-theme path
(add-to-list 'load-path "~/.emacs.d/etc/themes")
(setq custom-theme-directory "~/.emacs.d/etc/themes")

;(load-theme 'monokai)     ;; Sublime-Text Theme
;(load-theme 'desert)      ;; Desert Theme
;(load-theme 'dark-laptop) ;; Gnome? Theme
;(load-theme 'wkm-green)   ;; My Green Theme
(load-theme 'wkm-colorful t) ;; My Colorful Theme
