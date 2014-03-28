;;;; @ Mouse Wheel
(mouse-wheel-mode)

(global-set-key   [mouse-4] '(lambda () (interactive) (scroll-down 5))) ;; Scroll up   by 5 lines
(global-set-key   [mouse-5] '(lambda () (interactive) (scroll-up   5))) ;; Scroll down by 5 lines
(global-set-key [S-mouse-4] '(lambda () (interactive) (scroll-down 1))) ;; Scroll up   by 1 line
(global-set-key [S-mouse-5] '(lambda () (interactive) (scroll-up   1))) ;; Scroll down by 1 line
(global-set-key [C-mouse-4] 'scroll-down)                               ;; Scroll up   by 1 screen
(global-set-key [C-mouse-5] 'scroll-up)                                 ;; Scroll down by 1 screen


;;;; @ Global Key
;; Macro (C-e return)
(fset 'super-new-line [?\C-e return])

(global-set-key (kbd "C-h")        'delete-backward-char)               ;; BackSpace
(global-set-key (kbd "C-c k")      'kill-ring-save)                     ;; Copy
(global-set-key (kbd "C-r")        'revert-buffer)                      ;; Reload
(global-set-key (kbd "<C-return>") 'super-new-line)                     ;; New-Line in the text

(global-set-key (kbd "M-p")        'scroll-down)                        ;; Scroll up   by 1 screen
(global-set-key (kbd "M-n")        'scroll-up)                          ;; Scroll down by 1 screen
(global-set-key (kbd "C-x p")      'beginning-of-buffer)                ;; Scroll top
(global-set-key (kbd "C-x n")      'end-of-buffer)                      ;; Scroll bottom

(global-set-key (kbd "C-;")        'other-window)                       ;; Move to another  buffer
(global-set-key (kbd "C-M-f")      'windmove-right)                     ;; Move to right    buffer
(global-set-key (kbd "C-M-b")      'windmove-left)                      ;; Move to left     buffer
(global-set-key (kbd "C-M-n")      'windmove-down)                      ;; Move to bottom   buffer
(global-set-key (kbd "C-M-p")      'windmove-up)                        ;; Move to top      buffer

(global-set-key (kbd "C->")        'enlarge-window-horizontally)        ;; Enlarge window horizontal size
(global-set-key (kbd "C-<")        'shrink-window-horizontally)         ;; Shrink  window horizontal size
(global-set-key (kbd "C-}")        'enlarge-window)                     ;; Enlarge window vertical   size
(global-set-key (kbd "C-{")        'shrink-window)                      ;; Shrink  window vertical   size