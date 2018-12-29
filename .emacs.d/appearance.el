
;; Clean startup
(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)
(setq inhibit-startup-screen t)
(column-number-mode)
;; (global-hl-line-mode 1)
(require 'kaolin-themes)
(require 'rainbow-delimiters)
(add-hook 'prog-mode-hook #'rainbow-delimiters-mode)
(add-hook 'ciao-mode-hook #'rainbow-delimiters-mode)
(require 'rainbow-mode)
;; Spaceline all-the-icons
(require 'spaceline-all-the-icons)
(setq spaceline-all-the-icons-separator-type 'none)
(spaceline-all-the-icons-theme)
(spaceline-all-the-icons--setup-neotree)
(spaceline-toggle-all-the-icons-projectile-off)
(spaceline-toggle-all-the-icons-buffer-path-off)
(spaceline-toggle-all-the-icons-hud-off)
(spaceline-toggle-all-the-icons-time-off)
(spaceline-toggle-all-the-icons-buffer-position-on)
;; ;; Golden Ratio
;; (require 'golden-ratio)
;; (golden-ratio-mode 1)

