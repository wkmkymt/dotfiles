;;;; @ Frame
(defvar my-init-frame-alist
  (list
   '(font   . "-unknown-Ricty-bold-normal-normal-*-14-*-*-*-*-0-iso10646-1")
   '(width  . 116)
   '(height . 55)
   '(top    . 0)
   '(left   . 0)))
(setq default-frame-alist (append initial-frame-alist my-init-frame-alist))


;;;; @ Color Theme
(add-to-list 'load-path "~/.emacs.d/etc/themes")
(setq-default custom-theme-load-path "~/.emacs.d/etc/themes")
;(load-theme 'monokai)     ;; Sublime-Text Theme
;(load-theme 'desert)      ;; Desert Theme
;(load-theme 'dark-laptop) ;; Gnome? Theme
;(load-theme 'wkm-green)   ;; My Green Theme
(load-theme 'wkm-colorful) ;; My Colorful Theme