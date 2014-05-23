;;;; @ Popwin
;;;; http://d.hatena.ne.jp/m2ym/20110120/1295524932
(require 'popwin)
(require 'popwin-yatex)

;; Default
(setq display-buffer-function 'popwin:display-buffer)
(setq popwin:popup-window-height 0.3)
(setq popwin:popup-window-width 0.25)

;; Push
(defmacro append-to-list (to lst)
  `(setq ,to (append ,lst ,to)))

(append-to-list popwin:special-display-config
                '((" *auto-async-byte-compile*")
                  (direx:direx-mode :position left)
                  ("*latex-math-preview-expression*")
                  ("*YaTeX-typesetting*")
                  ("*dvi-preview*")
                  ))
