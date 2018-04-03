;;; package --- Summary:
(when (>= emacs-major-version 24)
  (require 'package)
  (add-to-list
   'package-archives
   '("melpa" . "http://melpa.org/packages/") t)
  (add-to-list
   'package-archives
   '("melpa-stable" . "http://melpa-stable.milkbox.net/packages/") t)
  (package-initialize))

;;(desktop-save-mode 1)

(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)

;; (use-package powerline
;;   :ensure t
;;   :config (powerline-default-theme))

;; Rainbow delimeters
(use-package rainbow-delimiters
	     :ensure t
	     :init
	     (add-hook 'prog-mode-hook #'rainbow-delimiters-mode)
	     )

;; Rainbow mode
(use-package rainbow-mode
	     :ensure t
	     :mode "\\.css\\'"
	     )

;; Remove initial buffer
(setq inhibit-startup-screen t)

;; (use-package emojify
;;   :ensure t)

;; Yasnippets
;; (use-package yasnippet
;;   :ensure t
;;   :init (yas-global-mode 1)
;;   :config
;;   (define-key yas-minor-mode-map (kbd "<tab>") nil)
;;   (define-key yas-minor-mode-map (kbd "TAB") nil)
;;   (define-key yas-minor-mode-map (kbd "<C-tab>") 'yas-expand)
;;   )

;; SmartParents
(use-package smartparens
	     :ensure t
	     :init (smartparens-global-mode t))

;; Auto complete
(use-package auto-complete
	     :ensure t
	     :config (ac-config-default))

;; Flycheck
(use-package flycheck
	     :ensure t
	     :init (global-flycheck-mode))

(package-initialize)
(use-package elpy
	     :ensure t
	     :config (elpy-enable)
	     )

(use-package haskell-mode
	     :ensure t)

;; Magit
(use-package magit
	     :ensure t
	     :bind (("C-c g" . magit-status)
		    ("C-x M-g" . magit-dispatch-popup)))

(require 'spaceline-all-the-icons)

(setq spaceline-all-the-icons-separator-type 'none)
(spaceline-all-the-icons-theme)

(spaceline-all-the-icons--setup-neotree)

(spaceline-toggle-all-the-icons-projectile-off)
(spaceline-toggle-all-the-icons-buffer-path-off)
(spaceline-toggle-all-the-icons-hud-off)
(spaceline-toggle-all-the-icons-time-off)
(spaceline-toggle-all-the-icons-buffer-position-on)


;;; init.el ends here

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default bold shadow italic underline bold bold-italic bold])
 '(beacon-color "#cc6666")
 '(custom-enabled-themes (quote (doom-tomorrow-night)))
 '(custom-safe-themes
   (quote
    ("a866134130e4393c0cad0b4f1a5b0dd580584d9cf921617eee3fd54b6f09ac37" default)))
 '(flycheck-color-mode-line-face-to-color (quote mode-line-buffer-id))
 '(frame-background-mode (quote dark))
 '(notmuch-search-line-faces
   (quote
    (("unread" :foreground "#aeee00")
     ("flagged" :foreground "#0a9dff")
     ("deleted" :foreground "#ff2c4b" :bold t))))
 '(package-selected-packages
   (quote
    (cargo racer all-the-icons-ivy all-the-icons-dired all-the-icons-gnus hideshow-org badwolf-theme ghc spaceline-all-the-icons doom-themes color-theme-sanityinc-tomorrow use-package spaceline smartparens rainbow-mode rainbow-delimiters multi-term magit haskell-mode flycheck emojify elpy autothemer auto-complete all-the-icons))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;;; Commentary:
;;; Code:
