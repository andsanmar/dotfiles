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
    ("604648621aebec024d47c352b8e3411e63bdb384367c3dd2e8db39df81b475f5" "53d1bb57dadafbdebb5fbd1a57c2d53d2b4db617f3e0e05849e78a4f78df3a1b" "7666b079fc1493b74c1f0c5e6857f3cf0389696f2d9b8791c892c696ab4a9b64" "82d2cac368ccdec2fcc7573f24c3f79654b78bf133096f9b40c20d97ec1d8016" "1b8d67b43ff1723960eb5e0cba512a2c7a2ad544ddb2533a90101fd1852b426e" "bb08c73af94ee74453c90422485b29e5643b73b05e8de029a6909af6a3fb3f58" "628278136f88aa1a151bb2d6c8a86bf2b7631fbea5f0f76cba2a0079cd910f7d" "b5ecb5523d1a1e119dfed036e7921b4ba00ef95ac408b51d0cd1ca74870aeb14" "0846e3b976425f142137352e87dd6ac1c0a1980bb70f81bfcf4a54177f1ab495" "77c3f5f5acaa5a276ca709ff82cce9b303f49d383415f740ba8bcc76570718b9" "4e21fb654406f11ab2a628c47c1cbe53bab645d32f2c807ee2295436f09103c6" "2a1b4531f353ec68f2afd51b396375ac2547c078d035f51242ba907ad8ca19da" "2af26301bded15f5f9111d3a161b6bfb3f4b93ec34ffa95e42815396da9cb560" "a866134130e4393c0cad0b4f1a5b0dd580584d9cf921617eee3fd54b6f09ac37" "06f0b439b62164c6f8f84fdda32b62fb50b6d00e8b01c2208e55543a6337433a" default)))
 '(flycheck-color-mode-line-face-to-color (quote mode-line-buffer-id))
 '(frame-background-mode (quote dark))
 '(notmuch-search-line-faces
   (quote
    (("unread" :foreground "#aeee00")
     ("flagged" :foreground "#0a9dff")
     ("deleted" :foreground "#ff2c4b" :bold t))))
 '(package-selected-packages
   (quote
    (all-the-icons-ivy all-the-icons-dired all-the-icons-gnus hideshow-org badwolf-theme ghc spaceline-all-the-icons doom-themes color-theme-sanityinc-tomorrow use-package spaceline smartparens rainbow-mode rainbow-delimiters multi-term magit haskell-mode flycheck emojify elpy autothemer auto-complete all-the-icons))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;;; Commentary:
;;; Code:
