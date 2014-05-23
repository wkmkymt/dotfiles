;;;; @ YaTeX Mode
(autoload 'yatex-mode "yatex" nil t)

(add-to-list 'auto-mode-alist '("\\.tex?$" . yatex-mode))

;; Coding system
(setq YaTeX-kanji-code nil)

;; Auto newline
(add-hook 'yatex-mode-hook '(lambda ()(setq auto-fill-function nil)))

;; LaTeX commnad
(setq tex-command  "platex")
(setq dvi2-command "xdvi")
(setq dviprint-command-format "dvipdfmx")

;; Popwin
(require 'popwin-yatex)
;;(push '("*YaTeX-typesetting*" :height 0.2 :regexp t) popwin:special-display-config)
;;(push '("*dvi-preview*"       :height 0.2 :regexp t) popwin:special-display-config)


;;;; @ Auto Complete LaTeX
(add-hook 'latex-mode-hook 'ac-l-setup)
(add-hook 'yatex-mode-hook 'ac-l-setup)


;;;; @ LaTeX Math Preview
(require 'latex-math-preview)

(autoload 'latex-math-preview-expression      "latex-math-preview" nil t)
(autoload 'latex-math-preview-insert-symbol   "latex-math-preview" nil t)
(autoload 'latex-math-preview-save-image-file "latex-math-preview" nil t)
(autoload 'latex-math-preview-beamer-frame    "latex-math-preview" nil t)

(setq latex-math-preview-cache-directory-for-insertion "~/.emacs.d/etc/lmp-cache/")

;; Popwin
;;(push '("*latex-math-preview*" :height 0.2 :regexp t) popwin:special-display-config)

;; Keybind
(defun add-yatex-mode-hook ()
  (YaTeX-define-key "p"    'latex-math-preview-expression)
  (YaTeX-define-key "\C-p" 'latex-math-preview-save-image-file)
  (YaTeX-define-key "j"    'latex-math-preview-insert-symbol)
  (YaTeX-define-key "\C-j" 'latex-math-preview-last-symbol-again)
  (YaTeX-define-key "\C-b" 'latex-math-preview-beamer-frame)
  (YaTeX-define-key "o" (concat YaTeX-prefix "p\C-xo")))
(add-hook 'yatex-mode-hook 'add-yatex-mode-hook)
(setq latex-math-preview-in-math-mode-p-func 'YaTeX-in-math-mode-p)

;; LaTeX commnad path
(setq latex-math-preview-command-path-alist
      '((platex   . "/usr/bin/platex")
        (dvipng   . "/usr/bin/dvipng")
        (dvips    . "/usr/bin/dvips")
        (dvipdfmx . "/usr/bin/dvipdfmx")))
