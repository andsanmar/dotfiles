;; Clean startup
(tool-bar-mode -1)
(menu-bar-mode -1)
(condition-case nil
    (scroll-bar-mode -1)
  (error nil))
(xterm-mouse-mode t)
(setq inhibit-startup-screen t)
(add-to-list 'default-frame-alist
	     '(font . "Source Code Pro 12"))
(column-number-mode)
;; (global-hl-line-mode 1)
(require 'kaolin-themes)
(require 'doom-themes)
(require 'fixme-mode)
(require 'rainbow-delimiters)
(add-hook 'prog-mode-hook #'rainbow-delimiters-mode)
(add-hook 'ciao-mode-hook #'rainbow-delimiters-mode)
(require 'rainbow-mode)

(require 'smooth-scroll)

;; (require 'doom-modeline)
;; (doom-modeline-mode 1)
;; (setq doom-modeline-buffer-file-name-style 'relative-to-project)
;; (setq find-file-visit-truename t)
;; (setq doom-modeline-vcs-max-length 20)
;; (setq doom-modeline-icon t)
;; (setq doom-modeline-height 20)
(require 'lambda-line)
(setq lambda-line-position 'bottom) ;; Set position of status-line 
(setq lambda-line-abbrev t) ;; abbreviate major modes
(setq lambda-line-hspace "")  ;; add some cushion
(setq lambda-line-prefix t) ;; use a prefix symbol
(setq lambda-line-prefix-padding nil) ;; no extra space for prefix 
(setq lambda-line-status-invert nil)  ;; no invert colors
(setq lambda-line-gui-ro-symbol  "◖") ;; symbols
(setq lambda-line-gui-mod-symbol "●")
(setq lambda-line-gui-rw-symbol  "○") 
(setq lambda-line-space-top +.00)  ;; padding on top and bottom of line
(setq lambda-line-space-bottom -.00)
(setq lambda-line-symbol-position 0.1) ;; adjust the vertical placement of symbol
(lambda-line-mode 1)

;; ;; Golden Ratio
;; (require 'golden-ratio)
;; (golden-ratio-mode 1)
(setq doc-view-resolution 512)
(blink-cursor-mode -1)

;; (require 'hasklig-mode)
;; (add-hook 'haskell-mode-hook #'hasklig-mode)
;; (add-hook 'coq-mode-hook #'hasklig-mode)

(defun toggle-mode-line () "toggles the modeline on and off"
  (interactive) 
  (setq mode-line-format
    (if (equal mode-line-format nil)
        (default-value 'mode-line-format)) )
  (redraw-display))

(global-set-key [M-f12] 'toggle-mode-line)

(require 'hide-mode-line)

(require 'tty-format)

(require 'minimap)
(setq minimap-window-location 'right)
;; M-x display-ansi-colors to explicitly decode ANSI color escape sequences                                                                                                                                        
(defun display-ansi-colors ()
  (interactive)
  (format-decode-buffer 'ansi-colors))
