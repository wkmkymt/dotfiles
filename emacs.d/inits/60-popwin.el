;;;; @ Popwin
;;;; http://d.hatena.ne.jp/m2ym/20110120/1295524932
(require 'popwin)
(require 'popwin-yatex)

;; Default
(setq display-buffer-function 'popwin:display-buffer)
(setq popwin:close-popup-window-timer-interval 0.5)
(setq popwin:popup-window-height 0.3)
(setq popwin:popup-window-width 0.25)

;; Push
(defmacro append-to-list (to lst)
  `(setq ,to (append ,lst ,to)))

(append-to-list popwin:special-display-config
                '(("*Messages*")                      ;; Messages
                  (" *auto-async-byte-compile*")      ;; Auto Byte Compile
                  (direx:direx-mode :position left)   ;; Direx
                  ("*YaTeX-typesetting*")             ;; YaTeX Compile
                  ("*dvi-preview*")                   ;; YaTeX Preview
                  ("*math-mode-signs*")               ;; Math Signs Preview
                  ("*latex-math-preview-expression*") ;; LaTeX Math Preview
;;                 ("*gnuplot*" :height 25)           ;; Gnuplot
                  ))
