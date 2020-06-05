
;; Clean startup
(tool-bar-mode -1)
(menu-bar-mode -1)
(condition-case nil
    (scroll-bar-mode -1)
  (error nil))
(xterm-mouse-mode t)
(setq inhibit-startup-screen t)
(add-to-list 'default-frame-alist
	     '(font . "Hack-11"))
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

(require 'doom-modeline)
(doom-modeline-mode 1)
(setq doom-modeline-buffer-file-name-style 'relative-to-project)
(setq find-file-visit-truename t)
(setq doom-modeline-vcs-max-length 20)
(setq doom-modeline-icon t)
(setq doom-modeline-height 20)


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
