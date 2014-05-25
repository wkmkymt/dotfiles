;;;; @ Clean Mode Line
;;;; http://d.hatena.ne.jp/syohex/20130131/1359646452
(defvar mode-line-cleaner-alist
  '(
    ;; Major modes
    (lisp-interaction-mode   . "LispI")
    (emacs-lisp-mode         . "Elisp")
    (python-mode             . "Python")
    (ruby-mode               . "Ruby")
    (web-mode                . "Web")
    (css-mode                . "CSS")
    (js2-mode                . "JS2")
    (sh-mode                 . "Sh")
    (shell-script-mode       . "Sh")
    (markdown-mode           . "Md")
    (yaml-mode               . "Yml")
    (asm-mode                . "Asm")
    (gnuplot-mode            . "Gplt")
    (gnuplot-comint-mode     . "GpltI")

    ;; Minor modes
    (auto-complete-mode      . " AC")
    (auto-install-minor-mode . " AI")
    (undo-tree-mode          . " U/R")
    (hs-minor-mode           . " O/C")
    (cursor-in-brackets-mode . " cb")
    (flex-autopair-mode      . " fa")
    (emmet-mode              . " Emm")
    (server-buffer-clients   . " Sv")))

(require 'cl)
(defun clean-mode-line ()
  (interactive)
  (loop for (mode . mode-str) in mode-line-cleaner-alist
        do
        (let ((old-mode-str (cdr (assq mode minor-mode-alist))))
          ;; minor mode
          (when old-mode-str
            (setcar old-mode-str mode-str))
          ;; major mode
          (when (eq mode major-mode)
            (setq mode-name mode-str)))))

(add-hook 'after-change-major-mode-hook 'clean-mode-line)


;;;; @ Power Line
;;;; http://jedipunkz.github.io/blog/2012/05/04/powerline.el-emacs/
;;;; http://www.gnu.org/software/emacs/manual/html_node/elisp/_0025_002dConstructs.html#g_t_0025_002dConstructs
;;;; http://mgrace.info/?p=886
;;;; http://hico-horiuchi.hateblo.jp/entry/20130510/1368201907
;;;; http://blechmusik.hatenablog.jp/entry/2013/12/13/020823

;; Define color
(defconst ml-black  "#555")
(defconst ml-gray   "#aaa")
(defconst ml-white  "#eee")
(defconst ml-green  "#385")
(defconst ml-purple "#a0a")
(defconst ml-yellow "#ae4")
(defconst ml-lemon  "#ffa")


;; Define face
(defun define-face (face-name bg-color fg-color)
  (make-face face-name)
  (set-face-attribute
   face-name t
   :background bg-color
   :foreground fg-color
   :weight 'bold
   :box nil))

(define-face 'mode-line-first    ml-black  ml-yellow)
(define-face 'mode-line-second   ml-green  ml-white)
(define-face 'mode-line-third    ml-yellow ml-black)
(define-face 'mode-line-fourth   ml-yellow ml-purple)
(define-face 'mode-line          ml-lemon  ml-white)
(define-face 'mode-line-inactive ml-gray   ml-white)


;; Define arrow
(defun my-arrow-right-xpm (bg-color fg-color)
  (format "/* XPM */
static char * arrow_right[] = {
\"12 20 2 1\",
\". c %s\",
\"  c %s\",
\".           \",
\"..          \",
\"...         \",
\"....        \",
\".....       \",
\"......      \",
\".......     \",
\"........    \",
\".........   \",
\"..........  \",
\"..........  \",
\".........   \",
\"........    \",
\".......     \",
\"......      \",
\".....       \",
\"....        \",
\"...         \",
\"..          \",
\".           \"};"  bg-color fg-color))

(defun my-arrow-left-xpm (bg-color fg-color)
  (format "/* XPM */
static char * arrow_left[] = {
\"12 20 2 1\",
\". c %s\",
\"  c %s\",
\"           .\",
\"          ..\",
\"         ...\",
\"        ....\",
\"       .....\",
\"      ......\",
\"     .......\",
\"    ........\",
\"   .........\",
\"  ..........\",
\"  ..........\",
\"   .........\",
\"    ........\",
\"     .......\",
\"      ......\",
\"       .....\",
\"        ....\",
\"         ...\",
\"          ..\",
\"           .\"};"  bg-color fg-color))

(defvar arrow-right-first  (create-image (my-arrow-right-xpm ml-black  ml-green)  'xpm t :ascent 'center))
(defvar arrow-right-second (create-image (my-arrow-right-xpm ml-green  ml-yellow) 'xpm t :ascent 'center))
(defvar arrow-right-third  (create-image (my-arrow-right-xpm ml-yellow "None")    'xpm t :ascent 'center))
(defvar arrow-left-first   (create-image (my-arrow-left-xpm  ml-black  ml-green)  'xpm t :ascent 'center))
(defvar arrow-left-second  (create-image (my-arrow-left-xpm  ml-green  ml-yellow) 'xpm t :ascent 'center))
(defvar arrow-left-third   (create-image (my-arrow-left-xpm  ml-yellow "None")    'xpm t :ascent 'center))


;; Set mode line format
(defun  ml-minor-mode ()
  (concat (format-mode-line minor-mode-alist) " "))

(defun  ml-git-branch ()
  (let* ((branch (replace-regexp-in-string
                  "[\r\n]+\\'" ""
                  (shell-command-to-string "git symbolic-ref -q HEAD")))
         (mode-line-str (if (string-match "^refs/heads/" branch)
                            (format " %10s " (substring branch 11)) "            ")))
    (propertize mode-line-str 'face 'mode-line)))

(defun showrten-directory (dir max-length)
  (let ((path (reverse (split-string (abbreviate-file-name dir) "/")))
        (output ""))
    (when (and path (equal "" (car path)))
      (setq path (cdr path)))
    (while (and path (< (length output) (- max-length 5)))
      (setq output (concat (car path) "/" output))
      (setq path (cdr path)))
    (when path
      (setq output (concat ".../" output)))
    (setq output (concat " " output))
    output))

(defvar ml-non             " ")
(defvar ml-modification    " %*")
(defvar ml-major-mode      " %m ")
(defvar ml-dirs            (showrten-directory default-directory 15))
(defvar ml-buffer-name     " %b ")
(defvar ml-above-text      " %6p ")
(defvar ml-cursor-position " %4l : %2c ")
(defvar ml-center-space    '((space :align-to (- right-fringe 34))))


(setq-default mode-line-format
              (list
               ;; right items
               '(:eval (concat (propertize ml-modification    'face    'mode-line-first)
                               (propertize ml-major-mode      'face    'mode-line-first)
                               (propertize ml-non             'display  arrow-right-first)
                               (propertize (ml-minor-mode)    'face    'mode-line-second)
                               (propertize ml-non             'display  arrow-right-second)
;;                               (propertize ml-dirs            'face    'mode-line-third)
;;                               (propertize ml-buffer-name     'face    'mode-line-fourth)
                               (propertize ml-buffer-name     'face    'mode-line-third)
                               (propertize ml-non             'display  arrow-right-third)))

               ;; center items
               '(:eval (concat (propertize ml-non             'display  ml-center-space)))

               ;; left items
               '(:eval (concat (propertize ml-non             'display  arrow-left-third)
                               (propertize (ml-git-branch)    'face    'mode-line-third)
                               (propertize ml-non             'display  arrow-left-second)
                               (propertize ml-cursor-position 'face    'mode-line-second)
                               (propertize ml-non             'display  arrow-left-first)
                               (propertize ml-above-text      'face    'mode-line-first)))))
