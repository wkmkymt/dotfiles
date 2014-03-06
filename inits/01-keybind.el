;;;; @ Mouse Wheel
(mouse-wheel-mode)

(global-set-key   [mouse-4] '(lambda () (interactive) (scroll-down 5))) ;; 5行ずつ上スクロール
(global-set-key   [mouse-5] '(lambda () (interactive) (scroll-up   5))) ;; 5行ずつ下スクロール
(global-set-key [S-mouse-4] '(lambda () (interactive) (scroll-down 1))) ;; 1行ずつ上スクロール
(global-set-key [S-mouse-5] '(lambda () (interactive) (scroll-up   1))) ;; 1行ずつ下スクロール
(global-set-key [C-mouse-4] 'scroll-down)                               ;; 1スクリーンずつ上スクロール
(global-set-key [C-mouse-5] 'scroll-up)                                 ;; 1スクリーンずつ下スクロール


;;;; @ Global Key
;; マクロ(C-e return)
(fset 'super-new-line [?\C-e return])

(global-set-key (kbd "C-h")        'delete-backward-char)               ;; バックスペース
(global-set-key (kbd "C-c k")      'kill-ring-save)                     ;; コピー
(global-set-key (kbd "C-r")        'revert-buffer)
(global-set-key (kbd "<C-return>") 'super-new-line)                     ;; 書式の途中からでも改行

(global-set-key (kbd "M-p")        'scroll-down)                        ;; 1画面上に移動
(global-set-key (kbd "M-n")        'scroll-up)                          ;; 1画面下に移動
(global-set-key (kbd "C-x p")      'beginning-of-buffer)                ;; ファイル先頭に移動
(global-set-key (kbd "C-x n")      'end-of-buffer)                      ;; ファイル後尾に移動

(global-set-key (kbd "C-M-;")      'next-buffer)                        ;; 次のバッファへ切り替え
(global-set-key (kbd "C-M-:")      'previous-buffer)                    ;; 前のバッファへ切り替え
(global-set-key (kbd "C-;")        'other-window)                       ;; 別のウィンドウに移動
(global-set-key (kbd "C-M-f")      'windmove-right)                     ;; 右のウィンドウに移動
(global-set-key (kbd "C-M-b")      'windmove-left)                      ;; 左のウィンドウに移動
(global-set-key (kbd "C-M-n")      'windmove-down)                      ;; 下のウィンドウに移動
(global-set-key (kbd "C-M-p")      'windmove-up)                        ;; 上のウィンドウに移動

(global-set-key (kbd "C->")        'enlarge-window-horizontally)        ;; ウィンドウサイズを横に広げる
(global-set-key (kbd "C-<")        'shrink-window-horizontally)         ;; ウィンドウサイズを横に縮める
(global-set-key (kbd "C-}")        'enlarge-window)                     ;; ウィンドウサイズを横に広げる
(global-set-key (kbd "C-{")        'shrink-window)                      ;; ウィンドウサイズを横に縮める