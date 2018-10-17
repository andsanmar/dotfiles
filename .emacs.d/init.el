;;; package --- Summary:
(when (>= emacs-major-version 24)
  (require 'package)
  (add-to-list
   'package-archives
   '("melpa" . "http://melpa.org/packages/") t)
  (add-to-list
   'package-archives
   '("melpa-stable" . "http://melpa-stable.milkbox.net/packages/") t))

(package-initialize)

;;(desktop-save-mode 1)

(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)

(set-face-attribute 'default nil :height 126)
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(rainbow-delimiters-depth-1-face ((t (:foreground "DarkOrange1")))))

;; (use-package powerline
;;   :ensure t
;;   :config (powerline-default-theme))

;; Rainbow delimeters
(use-package rainbow-delimiters
  :ensure t
  :init
  (add-hook 'prog-mode-hook #'rainbow-delimiters-mode)
  (add-hook 'ciao-mode-hook #'rainbow-delimiters-mode)
  )

;; Rainbow mode
(use-package rainbow-mode
  :ensure t
  :mode "\\.css\\'"
  )


;; Remove initial buffer
(setq inhibit-startup-screen t)

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

;; Elpy
(use-package elpy
  :ensure t
  :config (elpy-enable)
  )

;; Haskell
(use-package haskell-mode
  :ensure t)

;; Magit
(use-package magit
  :ensure t
  :bind (("C-c g" . magit-status)
	 ("C-x M-g" . magit-dispatch-popup)))

;; Multiple cursors
(use-package multiple-cursors
  :ensure t
  :bind (("C-S-c C-S-c" . mc/edit-lines)
         ("C->" . mc/mark-next-like-this)
         ("C-<" . mc/mark-previous-like-this)
         ("C-c C-<" . mc/mark-all-like-this))
  )

;; Undo
(use-package undo-tree
  :ensure t
  :init
  (defalias 'redo 'undo-tree-redo)
  :config
  (global-undo-tree-mode 1)
  (global-set-key (kbd "C-z") 'undo)
  (global-set-key (kbd "C-S-z") 'redo)
  )

(global-hl-line-mode 1)

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

;; Rust
(setq racer-cmd "~/.cargo/bin/racer") ;; Rustup binaries PATH
(setq racer-rust-src-path "~/.doc/rust/src") ;; Rust source code PATH
(add-hook 'rust-mode-hook #'racer-mode)
(add-hook 'racer-mode-hook #'eldoc-mode)
(add-hook 'racer-mode-hook #'company-mode)
(with-eval-after-load 'rust-mode
  (add-hook 'flycheck-mode-hook #'flycheck-rust-setup))
(add-hook 'racer-mode-hook #'company-mode)
(require 'rust-mode)
(define-key rust-mode-map (kbd "TAB") #'company-indent-or-complete-common)
(setq company-tooltip-align-annotations t)

;; Search improved
(setq completion-ignore-case  t)
(setq read-file-name-completion-ignore-case  t)
(setq read-buffer-completion-ignore-case  t)

;; smex
(require 'smex) ; Not needed if you use package.el
(smex-initialize) ; Can be omitted. This might cause a (minimal) delay
					; when Smex is auto-initialized on its first run.
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
;; This is your old M-x.
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)

;; Clean buffers
(defun kill-buffers()
  (let (buffer buffers)
    (setq buffers (buffer-list))
    (dotimes (i (length buffers))
      (setq buffer (pop buffers))
      (if (not (string-equal (buffer-name buffer) "*scratch*")) (kill-buffer buffer) nil))))

(defun clean-buffers()
       (interactive)
       (if (yes-or-no-p "Do you really want to clean all buffers? ")
           (kill-buffers) nil))

(global-set-key (kbd "C-x C-k") 'clean-buffers)

(provide 'clean-buffers)

;; I LOVE this ccommand
(global-set-key (kbd "C-c C-v") 'undo-tree-visualize)
(global-set-key (kbd "<f2>") 'undo-tree-visualize)
(global-set-key (kbd "<f5>") 'bs-show)
;;; init.el ends here


;;; Commentary:
;;; Code:

					; @begin(93709509)@ - Do not edit these lines - added automatically!

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.

(if (file-exists-p "~/.ciao/ciao_emacs/elisp/ciao-site-file.el")
    (load-file "~/.ciao//ciao_emacs/elisp/ciao-site-file.el"))
					; @end(93709509)@ - End of automatically added lines.

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (kaolin-bubblegum)))
 '(custom-safe-themes
   (quote
    ("cd736a63aa586be066d5a1f0e51179239fe70e16a9f18991f6f5d99732cabb32" "b54826e5d9978d59f9e0a169bbd4739dd927eead3ef65f56786621b53c031a7c" "b35a14c7d94c1f411890d45edfb9dc1bd61c5becd5c326790b51df6ebf60f402" "fe666e5ac37c2dfcf80074e88b9252c71a22b6f5d2f566df9a7aa4f9bea55ef8" "d2e9c7e31e574bf38f4b0fb927aaff20c1e5f92f72001102758005e53d77b8c9" "174502267725776b47bdd2d220f035cae2c00c818765b138fea376b2cdc15eb6" "732b807b0543855541743429c9979ebfb363e27ec91e82f463c91e68c772f6e3" "06f0b439b62164c6f8f84fdda32b62fb50b6d00e8b01c2208e55543a6337433a" "a95d66071817d19102f6a5579c23fa90dcddcecb06d9a1f1f94dbc20cf596df7" "d890583c83cb36550c2afb38b891e41992da3b55fecd92e0bb458fb047d65fb3" "e4cbf084ecc5b7d80046591607f321dd655ec1bbb2dbfbb59c913623bf89aa98" "f6c0353ac9dac7fdcaced3574869230ea7476ff1291ba8ed62f9f9be780de128" "e1ad20f721b90cc8e1f57fb8150f81e95deb7ecdec2062939389a4b66584c0cf" "ec679d67bb792e49a89bfe8fa464d88af36c9cc85796ab84054f29038680abe3" "b09b58b73a8b6b23ad2092b416959dff41dbecfbc328871f247badd6c7b357b9" "f730a5e82e7eda7583c6526662fb7f1b969b60b4c823931b07eb4dd8f59670e3" "2757944f20f5f3a2961f33220f7328acc94c88ef6964ad4a565edc5034972a53" "58f6848b780dd5c36c17b45e42920eac19a55338d2ae716cef830b5193545611" "f153e8ed90e4d79cf2c61560da2b3091d2f3b94da42aaddc707012be4608cf52" "3a3de615f80a0e8706208f0a71bbcc7cc3816988f971b6d237223b6731f91605" "d1b4990bd599f5e2186c3f75769a2c5334063e9e541e37514942c27975700370" "6b2636879127bf6124ce541b1b2824800afc49c6ccd65439d6eb987dbf200c36" "a24c5b3c12d147da6cef80938dca1223b7c7f70f2f382b26308eba014dc4833a" "f0dc4ddca147f3c7b1c7397141b888562a48d9888f1595d69572db73be99a024" "356e5cbe0874b444263f3e1f9fffd4ae4c82c1b07fe085ba26e2a6d332db34dd" "75d3dde259ce79660bac8e9e237b55674b910b470f313cdf4b019230d01a982a" "93a0885d5f46d2aeac12bf6be1754faa7d5e28b27926b8aa812840fe7d0b7983" "151bde695af0b0e69c3846500f58d9a0ca8cb2d447da68d7fbf4154dcf818ebc" "4697a2d4afca3f5ed4fdf5f715e36a6cac5c6154e105f3596b44a4874ae52c45" "a3fa4abaf08cc169b61dea8f6df1bbe4123ec1d2afeb01c17e11fdc31fc66379" "f71859eae71f7f795e734e6e7d178728525008a28c325913f564a42f74042c31" default)))
 '(package-selected-packages
   (quote
    (org-gcal company-ghc w3m kaolin-themes darktooth-theme sublimity org-caldav oauth2 mu4e-maildirs-extension select-themes use-package undo-tree tabbar sudo-edit stack-mode spaceline-all-the-icons smex smartparens rust-playground rainbow-mode rainbow-delimiters pdf-tools ob-prolog neotree multiple-cursors multi-term material-theme magit kooten-theme hideshow-org flycheck-rust emojify elpy doom-themes color-theme-sanityinc-tomorrow challenger-deep-theme cargo badwolf-theme autothemer all-the-icons-ivy all-the-icons-gnus all-the-icons-dired ac-racer))))
