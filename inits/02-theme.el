;;;; @ Frame
(defvar my-init-frame-alist
  (list
   '(font   . "-unknown-Ricty-bold-normal-normal-*-14-*-*-*-*-0-iso10646-1")
;   '(background-color . "gray15")
;   '(foreground-color . "white")
;   '(cursor . "white")
   '(width  . 116)
   '(height . 55)
   '(top    . 0)
   '(left   . 0)))
(setq default-frame-alist (append initial-frame-alist my-init-frame-alist))


;;;; @ Color Theme
(setq-default custom-theme-load-path "~/.emacs.d/elisp/themes")
;(load-theme 'monokai)     ;; Sublime-Text Theme
;(load-theme 'desert)      ;; Desert Theme
;(load-theme 'dark-laptop) ;; Gnome? Theme
;(load-theme 'wkm-green)   ;; My Green Theme
(load-theme 'wkm-gnome)    ;; My Gnome Theme