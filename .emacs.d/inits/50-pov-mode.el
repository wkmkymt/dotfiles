;;;; @ POV-Ray Mode
;;;; http://xahlee.info/3d/povray_emacs.html
(autoload 'pov-mode "pov-mode" nil t)

(add-to-list 'auto-mode-alist '("\\.pov?$" . pov-mode))
