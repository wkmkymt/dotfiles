;;;; Gnuplot Mode
(require 'gnuplot)
(require 'gnuplot-mode)
(autoload 'gnuplot-mode "gnuplot" nil t)
(autoload 'gnuplot-make-buffer "gnuplot" nil t)

(defun replot ()
  (interactive)
  (gnuplot-send-string-to-gnuplot "replot\n" 'line))
(define-key gnuplot-mode-map "\C-c\C-p" 'replot)

(add-to-list 'auto-mode-alist
             '("\\.gp?$"  . gnuplot-mode)
             '("\\.plt?$" . gnuplot-mode))
