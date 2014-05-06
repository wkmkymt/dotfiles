;;; wkm-colorful-theme.ell --- WKM Colorful Theme for Emacs
;;
;; Copyright (C) 2014  mtky
;;
;; Author: mtky <mtky@mtky-Ubuntu>
;; Version: 0.01
;;
;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License.
;;
;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.
;;
;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:
;;
;; Port of wkm-colorful theme from `color-themes'

;;; Code:

(deftheme wkm-colorful "wkm-colorful theme")


(let
    ;; Define Color Name
    ((wkm-black      "#333333")
     (wkm-lightgray  "#aaaaaa")
     (wkm-gray       "#555555")
     (wkm-white      "#eeeeee")
     (wkm-lightgreen "#aaff44")
     (wkm-green      "#44cc44")
     (wkm-cyan       "#449999")
     (wkm-blue       "#66bbff")
     (wkm-lightblue  "#66ffff")
     (wkm-orange     "#ff8800")
     (wkm-yellow     "#eeee44")
     (wkm-magenta    "#ff88ff")
     (wkm-pink       "#ffcccc"))


  ;; Custom Color Theme
  (custom-theme-set-faces
   'wkm-colorful

   ;; Frame
   `(default                      ((nil ( :background ,wkm-black     :foreground ,wkm-white      ))))
   `(cursor                       ((nil ( :background ,wkm-white     :foreground ,wkm-gray       ))))
   `(hl-line                      ((nil ( :background ,wkm-gray                                  ))))
   `(minibuffer-prompt            ((nil (                            :foreground ,wkm-lightgreen ))))
   `(modeline                     ((nil ( :background ,wkm-lightgray :foreground ,wkm-black      ))))
   `(region                       ((nil ( :background ,wkm-cyan                                  ))))
   `(show-paren-match-face        ((nil ( :background ,wkm-cyan                                  ))))

   ;; Main
   `(font-lock-builtin-face       ((nil (                            :foreground ,wkm-blue       ))))
   `(font-lock-comment-face       ((nil (                            :foreground ,wkm-orange     ))))
   `(font-lock-constant-face      ((nil (                            :foreground ,wkm-green      ))))
   `(font-lock-doc-string-face    ((nil (                            :foreground ,wkm-pink       ))))
   `(font-lock-function-name-face ((nil (                            :foreground ,wkm-blue       ))))
   `(font-lock-keyword-face       ((nil (                            :foreground ,wkm-lightblue  ))))
   `(font-lock-string-face        ((nil (                            :foreground ,wkm-magenta    ))))
   `(font-lock-type-face          ((nil (                            :foreground ,wkm-lightgreen ))))
   `(font-lock-variable-name-face ((nil (                            :foreground ,wkm-yellow     ))))
   `(font-lock-warning-face       ((nil (                            :foreground ,wkm-pink       ))))))


;; AutoLoad
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name)))
  (when (not window-system)
    (custom-set-faces '(default ((nil (:background "nil")))))))


(provide-theme 'wkm-colorful)
;;; wkm-colorful-theme.el ends here
