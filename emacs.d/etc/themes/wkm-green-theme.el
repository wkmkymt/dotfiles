;;; wkm-green-theme.ell --- WKM Green Theme for Emacs
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
;; Port of wkm-green theme from `color-themes'

;;; Code:

(deftheme wkm-green "wkm-greenp theme")


(let
    ;; Define Color Name
    ((wkm-gray       "#333833") 
     (wkm-white      "#eeeeee")
     (wkm-orange     "#ff8800")
     (wkm-yellow     "#ffff88")
     (wkm-lightgreen "#aaff44")
     (wkm-green      "#44cc44")
     (wkm-darkgreen  "#336644")
     (wkm-lightblue  "#66ffff")
     (wkm-blue       "#66bbff")
     (wkm-purple     "#9955ee")
     (wkm-magenta    "#ff88ff")
     (wkm-pink       "#ffcccc"))
  

  ;; Custom Color Theme
  (custom-theme-set-faces
   'wkm-green

   ;; Frame
   `(default                      ((t ( :background ,wkm-gray      :foreground ,wkm-white      ))))
   `(cursor                       ((t (                            :foreground ,wkm-yellow     ))))
   `(hl-line                      ((t ( :background ,wkm-yellow                                ))))
   `(minibuffer-prompt            ((t (                            :foreground ,wkm-lightgreen ))))
   `(modeline                     ((t ( :background ,wkm-darkgreen                             ))))
   `(region                       ((t ( :background ,wkm-darkgreen                             ))))
   `(show-paren-match-face        ((t ( :background ,wkm-darkgreen                             ))))

   ;; Main
   `(font-lock-builtin-face       ((t (                            :foreground ,wkm-green      ))))
   `(font-lock-comment-face       ((t (                            :foreground ,wkm-orange     ))))
   `(font-lock-constant-face      ((t (                            :foreground ,wkm-purple     ))))
   `(font-lock-doc-string-face    ((t (                            :foreground ,wkm-green      ))))
   `(font-lock-function-name-face ((t (                            :foreground ,wkm-blue       ))))
   `(font-lock-keyword-face       ((t (                            :foreground ,wkm-lightblue  ))))
   `(font-lock-string-face        ((t (                            :foreground ,wkm-yellow     ))))
   `(font-lock-type-face          ((t (                            :foreground ,wkm-lightgreen ))))
   `(font-lock-variable-name-face ((t (                            :foreground ,wkm-magenta    ))))
   `(font-lock-warning-face       ((t (                            :foreground ,wkm-pink       ))))))


;; AutoLoad
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name)))
  (when (not window-system)
    (custom-set-faces '(default ((t (:background "nil")))))))


(provide-theme 'wkm-green)
;;; wkm-green-theme.el ends here 