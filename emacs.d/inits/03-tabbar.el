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

;; Disply buffer
;; (setq my-off-tabbar-list
;;       (rx "*Messages*"
;;           "*init log*"
;;           "*Completions*"))

;; (defun my-tabbar-buffer-list ()
;;   (remove-if
;;     (lambda (buffer)
;;       (find (aref (buffer-name buffer) 0) my-off-tabbar-list))
;;     (buffer-list))
;; )

;; (setq tabbar-buffer-list-function 'my-tabbar-buffer-list)

;; Tabbar style face
(set-face-attribute
 'tabbar-default nil
 :family     "Ricty"
 :bold       'bold
 :background "#555"
 :height     1.0)

(set-face-attribute
 'tabbar-unselected nil
 :foreground "#eee"
 :box        nil)

(set-face-attribute
 'tabbar-selected nil
 :foreground "#ae4"
 :box        nil)

(set-face-attribute
 'tabbar-separator nil
 :height     1.2)

;; Set keybinds
(global-set-key (kbd "C-M-;")      'tabbar-forward-tab)  ;; Move to next     buffer
(global-set-key (kbd "C-M-:")      'tabbar-backward-tab) ;; Move to previous buffer
