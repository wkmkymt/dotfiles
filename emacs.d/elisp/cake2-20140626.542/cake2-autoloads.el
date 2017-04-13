;;; cake2-autoloads.el --- automatically extracted autoloads
;;
;;; Code:


;;;### (autoloads (cake-auto-switch) "cake-auto-switch" "cake-auto-switch.el"
;;;;;;  (22697 12770 375167 234000))
;;; Generated autoloads from cake-auto-switch.el

(autoload 'cake-auto-switch "cake-auto-switch" "\


\(fn)" t nil)

;;;***

;;;### (autoloads (cake2::snippets-initialize cake2) "cake2" "cake2.el"
;;;;;;  (22697 12770 375167 234000))
;;; Generated autoloads from cake2.el

(autoload 'cake2 "cake2" "\
CakePHP2 minor mode.

\(fn &optional ARG)" t nil)

(when (fboundp 'define-global-minor-mode) (define-global-minor-mode global-cake2 cake2 cake2::maybe :group 'cake2))

(defvar cake2::key-map (make-sparse-keymap) "\
Keymap for Cake2.")

(autoload 'cake2::snippets-initialize "cake2" "\


\(fn)" nil nil)

(eval-after-load 'yasnippet '(cake2::snippets-initialize))

;;;***

;;;### (autoloads nil nil ("cake2-pkg.el") (22697 12770 409655 627000))

;;;***

(provide 'cake2-autoloads)
;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; cake2-autoloads.el ends here
