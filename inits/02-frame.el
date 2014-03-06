;;;; @ Frame
(defvar my-init-frame-alist
  (list
   '(font               . "-unknown-Ricty-bold-normal-normal-*-14-*-*-*-*-0-iso10646-1")
   '(foreground-color   . "white")
   '(background-color   . "grey22")
   '(border-color       . "grey22")
   '(mouse-color        . "white")
   '(cursor-color       . "white")
   '(alpha              . (85 85))
   '(width              . 116)
   '(height             . 55)
   '(top                . 0)
   '(left               . 0)))

;; フレーム初期設定
(setq default-frame-alist (append initial-frame-alist my-init-frame-alist))