;;;; @ Web Mode
;;;; http://web-mode.org/
;;;; http://yanmoo.blogspot.jp/2013/06/html5web-mode.html
(require 'web-mode)

(eval-after-load "web-mode"
  '(progn
     (add-to-list 'auto-mode-alist '("\\.html?$" . web-mode)) ;; HTML
     (add-to-list 'auto-mode-alist '("\\.php?$"  . web-mode)) ;; PHP
     (add-to-list 'auto-mode-alist '("\\.ejs?$"  . web-mode)) ;; EJS

     (define-key web-mode-map  (kbd "M-;") nil)
     (define-key web-mode-map  (kbd "C-c \\") 'web-mode-comment-or-uncomment)

     (defun add-web-common-conf ()
;       (setq web-mode-engines-alist
;             '(("php" . "\\.php\\")
;               ("erb" . "\\.ejs\\")))

       (setq web-mode-tab-auto-close-style 1)

       (setq-default tab-width 2)
       (setq-default indent-tabs-mode nil)

;       (setq web-mode-enable-current-element-highlight t)
;       (setq web-mode-enable-current-column-highlight t)
;       (setq web-mode-enable-auto-pairing t)
;       (setq web-mode-enable-css-colorization t)
;       (setq web-mode-enable-block-face t)
;       (setq web-mode-enable-part-face t)
;       (setq web-mode-enable-comment-keywords t)

       ;; Indent TAB size
       (setq web-mode-html-offset 2)
       (setq web-mode-style-padding 2)
       (setq web-mode-script-offset 2)
       (setq web-mode-java-offset 2)
       (setq web-mode-asp-offset 2)
       (setq web-mode-markup-indent-offset 2) ;; html
       (setq web-mode-css-indent-offset 2)    ;; css
       (setq web-mode-code-indent-offset 2)   ;; script

       ;; 1: Default Style
       ;; 2: Template-Engine Style
       (setq web-mode-comment-style 2))
     (add-hook 'web-mode-hook 'add-web-common-conf)

     ;; Custom Color Setting
     (custom-set-faces
      '(web-mode-doctype-face          ((t (:foreground "#66ffff" ))))    ;; HTML Doctype
      '(web-mode-html-tag-face         ((t (:foreground "#66bbff" ))))    ;; HTML Tag Name
      '(web-mode-html-attr-name-face   ((t (:foreground "#ff88ff" ))))    ;; HTML Attr Name
      '(web-mode-html-attr-value-face  ((t (:foreground "#ffff88" ))))    ;; HTML Attr Value
      '(web-mode-comment-face          ((t (:foreground "#ff8800" ))))    ;; Comment
      '(web-mode-server-comment-face   ((t (:foreground "#ff8800" ))))    ;; Comment
      '(web-mode-css-rule-face         ((t (:foreground "#66bbff" ))))    ;; CSS Tag
      '(web-mode-css-at-rule-face      ((t (:foreground "#66bbff" ))))    ;; CSS Tag
      '(web-mode-css-pseudo-class-face ((t (:foreground "#44cc44" ))))))) ;; CSS Pseudo Class
