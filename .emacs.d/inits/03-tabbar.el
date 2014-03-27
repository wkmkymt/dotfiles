;;;; @ Tab Bar
;;;; http://mgrace.info/?p=973
;;;; http://d.hatena.ne.jp/tequilasunset/20110103/p1
(require 'tabbar)
(tabbar-mode 1)

;; Don't make group
(setq tabbar-buffer-groups-function nil)

;; Invalid buttons
(dolist (btn '(tabbar-buffer-home-button
               tabbar-scroll-right-button
               tabbar-scroll-left-button))
  (set btn (cons (cons "" nil)
                 (cons "" nil))))

;; Display tab that extends from the window
(setq tabbar-auto-scroll-flag nil)

;; Set length between the tab between
(setq tabbar-separator '(1.5))

;; Tabbar style face
(set-face-attribute
 'tabbar-default nil
 :family     "Ricty"
 :bold       'bold
 :background "#777"
 :height     1.0)

(set-face-attribute
 'tabbar-unselected nil
 :background "#777"
 :foreground "#ae4"
 :box        nil)

(set-face-attribute
 'tabbar-selected nil
 :background "#ae4"
 :foreground "#555"
 :box        nil)

(set-face-attribute
 'tabbar-separator nil
 :height     1.2)

;; Sort tabbar by name
;(defun tabbar-add-tab (tabset object &optional append_ignored)
;  (let ((tabs (tabbar-tabs tabset)))
;    (if (tabbar-get-tab object tabset)
;        tabs
;      (let ((tab (tabbar-make-tab object tabset)))
;        (tabbar-set-template tabset nil)
;        (set tabset (sort (cons tab tabs)
;                          (lambda (a b) (string< (buffer-name (car a)) (buffer-name (car b))))))))))