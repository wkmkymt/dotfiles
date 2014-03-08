;;;; http://web-mode.org/
;;;; @ HTML Mode
(require 'web-mode)

(eval-after-load "web-mode"
  '(progn
     (add-to-list 'auto-mode-alist '("\\.html?$" . web-mode)) ;; html
     (add-to-list 'auto-mode-alist '("\\.css?$" . web-mode))  ;; css
     (add-to-list 'auto-mode-alist '("\\.js?$" . web-mode))   ;; js
     
     (defun add-web-common-conf ()
       (setq-default tab-width 2)
       (setq-default indent-tabs-mode nil)
       (setq web-mode-disable-pairing nil)

       (setq web-mode-markup-indent-offset 2) ;; html
       (setq web-mode-css-indent-offset 2)    ;; css
       (setq web-mode-code-indent-offset 2)   ;; script

       ;; 1: Default Style
       ;; 2: Template-Engine Style
       (setq web-mode-comment-style 2))
     (add-hook 'web-mode-hook 'add-web-common-conf)

     ;; Custom Color Setting
     (custom-set-faces
      '(web-mode-doctype-face          ((t (:foreground "cyan1"        :weight bold))))    ;; HTML Doctype
      '(web-mode-html-tag-face         ((t (:foreground "DeepSkyBlue1" :weight bold)))) ;; HTML Tag Name
      '(web-mode-html-attr-name-face   ((t (:foreground "SpringGreen1" :weight bold))))    ;; HTML Attr Name
      '(web-mode-html-attr-value-face  ((t (:foreground "LightGoldenrod1"     :weight bold))))    ;; HTML Attr Value
      '(web-mode-comment-face          ((t (:foreground "DarkOrange2"))))    ;; Comment
      '(web-mode-server-comment-face   ((t (:foreground "DarkOrange2"))))    ;; Comment

      '(web-mode-css-rule-face         ((t (:foreground "DeepPink1"  :weight bold))))    ;; CSS Tag
      '(web-mode-css-at-rule-face      ((t (:foreground "DeepSkyBlue1"  :weight bold)))) ;; CSS Tag
      '(web-mode-css-pseudo-class-face ((t (:foreground "SpringGreen1"  :weight bold))))))) ;; CSS Pseudo Class

