
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

;; Spaceline all-the-icons
;; (require 'spaceline-all-the-icons)
;; (setq spaceline-all-the-icons-separator-type 'none)
;; (spaceline-all-the-icons-theme)
;; (spaceline-all-the-icons--setup-neotree)
;; (spaceline-toggle-all-the-icons-projectile-off)
;; (spaceline-toggle-all-the-icons-buffer-path-off)
;; (spaceline-toggle-all-the-icons-hud-off)
;; (spaceline-toggle-all-the-icons-time-off)
;; (spaceline-toggle-all-the-icons-buffer-position-on)

(require 'doom-modeline)
(doom-modeline-mode 1)
(setq doom-modeline-buffer-file-name-style 'relative-to-project)
(setq find-file-visit-truename t)
(setq doom-modeline-vcs-max-length 20)
(setq doom-modeline-icon t)


;; ;; Golden Ratio
;; (require 'golden-ratio)
;; (golden-ratio-mode 1)
(setq doc-view-resolution 512)
(blink-cursor-mode -1)

(require 'hasklig-mode)
(add-hook 'haskell-mode-hook #'hasklig-mode)
(add-hook 'coq-mode-hook #'hasklig-mode)
