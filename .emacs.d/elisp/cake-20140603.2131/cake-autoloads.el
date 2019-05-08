;;; cake-autoloads.el --- automatically extracted autoloads
;;
;;; Code:


;;;### (autoloads (cake-snippets-initialize cake) "cake" "cake.el"
;;;;;;  (22697 12772 35167 318000))
;;; Generated autoloads from cake.el

(autoload 'cake "cake" "\
CakePHP minor mode.

\(fn &optional ARG)" t nil)

(when (fboundp 'define-global-minor-mode) (define-global-minor-mode global-cake cake cake-maybe :group 'cake))

(autoload 'cake-snippets-initialize "cake" "\


\(fn)" nil nil)

(eval-after-load 'yasnippet '(cake-snippets-initialize))

;;;***

;;;### (autoloads nil nil ("cake-pkg.el") (22697 12772 41879 481000))

;;;***

(provide 'cake-autoloads)
;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; cake-autoloads.el ends here
