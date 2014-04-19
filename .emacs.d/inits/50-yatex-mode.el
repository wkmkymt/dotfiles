;;;; @ YaTeX Mode
(autoload 'yatex-mode "yatex" nil t)

(add-to-list 'auto-mode-alist '("\\.tex?$" . yatex-mode))

;; Coding system
(setq YaTeX-kanji-code nil)

;; LaTeX commnad
(setq tex-command  "platex")
(setq dvi2-command "xdvi")
(setq dviprint-command-format "dvipdfmx")


;;;; @ LaTeX Math Preview
(autoload 'latex-math-preview-expression      "latex-math-preview" nil t)
(autoload 'latex-math-preview-insert-symbol   "latex-math-preview" nil t)
(autoload 'latex-math-preview-save-image-file "latex-math-preview" nil t)
(autoload 'latex-math-preview-beamer-frame    "latex-math-preview" nil t)

;; Keybind
(defun add-yatex-mode-hook ()
  (YaTeX-define-key "p"    'latex-math-preview-expression)
  (YaTeX-define-key "\C-p" 'latex-math-preview-save-image-file)
  (YaTeX-define-key "j"    'latex-math-preview-insert-symbol)
  (YaTeX-define-key "\C-j" 'latex-math-preview-last-symbol-again)
  (YaTeX-define-key "\C-b" 'latex-math-preview-beamer-frame))
(add-hook 'yatex-mode-hook 'add-yatex-mode-hook)
(setq latex-math-preview-in-math-mode-p-func 'YaTeX-in-math-mode-p)

;; LaTeX commnad path
(setq latex-math-preview-command-path-alist
      '((platex   . "/usr/bin/platex")
        (dvipng   . "/usr/bin/dvipng")
        (dvips    . "/usr/bin/dvips")
        (dvipdfmx . "/usr/bin/dvipdfmx")))