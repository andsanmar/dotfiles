;; Python
(require 'elpy)
(elpy-enable)
;; Haskell
(require 'markdown-mode)
(require 'yaml-mode)
(require 'haskell-mode)
(require 'haskell-process)
(require 'haskell-interactive-mode)
(require 'haskell-completions)
(require 'htmlize)
(require 'ciao)
(add-to-list 'auto-mode-alist '("\\.pl\\'" . ciao-mode))
(require 'rust-mode)
(setq racer-cmd "~/.cargo/bin/racer") ;; Rustup binaries PATH
(setq racer-rust-src-path "~/.doc/rust/src") ;; Rust source code PATH
(add-hook 'rust-mode-hook #'racer-mode)
(add-hook 'racer-mode-hook #'eldoc-mode)
(add-hook 'racer-mode-hook #'company-mode)
(add-hook 'racer-mode-hook #'company-mode)
(define-key rust-mode-map (kbd "TAB") #'company-indent-or-complete-common)
(setq company-tooltip-align-annotations t)

(require 'proof-general)
(require 'company-coq)
;; ;; Configure flycheck-liquidhs, if you haven't already
;; (add-hook 'haskell-mode-hook
;;           '(lambda () (flycheck-select-checker 'haskell-liquid)))

;; (add-hook 'literate-haskell-mode-hook
;;           '(lambda () (flycheck-select-checker 'haskell-liquid)))

;; (require 'liquid-types)

;; ;; Toggle minor mode on entering Haskell mode.
;; (add-hook 'haskell-mode-hook
;;           '(lambda () (liquid-types-mode)))
;; (add-hook 'literate-haskell-mode-hook
;; 	  '(lambda () (liquid-types-mode)))
