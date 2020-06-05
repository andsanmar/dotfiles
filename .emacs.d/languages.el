;;; package --- Summary:

(add-hook 'org-mode-hook 'toggle-truncate-lines)

(require 'markdown-mode)
(require 'yaml-mode)
(require 'go-mode)
(require 'fstar-mode)
(require 'wat-mode)
;; Haskell
(require 'haskell-mode)
(require 'haskell-process)
(require 'haskell-interactive-mode)
(require 'haskell-completions)
(require 'htmlize)
(require 'ciao)
(add-to-list 'auto-mode-alist '("\\.pl\\'" . ciao-mode))
(require 'rust-mode)
;; (require 'racer)
;; (require 'flycheck-rust)
;; (require 'cargo)
;; (setq racer-cmd "~/.cargo/bin/racer") ;; Rustup binaries PATH
;; (setq racer-rust-src-path "~/.doc/rust/src") ;; Rust source code PATH
;; (add-hook 'rust-mode-hook 'cargo-minor-mode)
;; (add-hook 'rust-mode-hook #'racer-mode)
;; (add-hook 'racer-mode-hook #'eldoc-mode)
;; (add-hook 'racer-mode-hook #'company-mode)
;; (define-key rust-mode-map (kbd "TAB") #'company-indent-or-complete-common)
;; (with-eval-after-load 'rust-mode
;;   (add-hook 'flycheck-mode-hook #'flycheck-rust-setup))

(setq company-tooltip-align-annotations t)

(require 'lsp-mode)
(require 'lsp-ui)
;; (add-hook 'lsp-mode-hook 'lsp-ui-mode)
(require 'company-lsp)
(push 'company-lsp company-backends)

;; (add-hook 'rust-mode-hook #'lsp)
;; (add-hook 'latex-mode-hook #'lsp)

;; (require 'lsp-latex)
;; (with-eval-after-load "tex-mode"
;;  (add-hook 'tex-mode-hook 'lsp)
;;  (add-hook 'latex-mode-hook 'lsp))

;; When working with 1 latex file is extremely useful
;; TODO turn kbd into the respecive function calls
;; TODO use a file .bookmarks instead of the emacs ones (and load it when the tex file is opened)
(fset 'next-latex-bookmark
      (kbd "C-s \\section{ RET C-SPC C-s } C-b M-w C-x r m C-y RET"))

(fset 'produce-latex-bookmarks
      (kbd "M-0 M-x next-latex-bookmark"))


;; (defun produce-latex-bookmarks () "Create the bookmarks for the current file."
;;        (interactive "")
;;        ;;(isearch-forward "section{" kbd "C-SPC C-s } RET C-b M-w C-x r m C-y RET"))
;; ;;  backward-char kill-ring-save bookmark-set yank))
;; ;;(isearch-forward "section{" (kbd "C-SPC") isearch-forward "}" (kbd "C-b M-w C-x r m C-y RET")));;  backward-char kill-ring-save bookmark-set yank))
;;        (kbd "C-s section{ RET C-SPC C-s } C-b M-w C-x r m C-y RET"))

(require 'flymake-jslint) ;; Not necessary if using ELPA package
(require 'js2-mode)
(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))
(add-hook 'js2-mode-hook 'flymake-jslint-load)
(require 'json-mode)


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

;; SCALA

;; Enable scala-mode and sbt-mode
(require 'scala-mode)
(add-to-list 'auto-mode-alist '("\\.s\\(cala\\|bt\\)$" . scala-mode))

(require 'sbt-mode)

;; ;; Enable nice rendering of diagnostics like compile errors.
(require 'flycheck)
(global-flycheck-mode)

(when (version<= "27" emacs-version)
  (dolist (fun '(c-electric-paren c-electric-brace))
    (add-to-list 'sp--special-self-insert-commands fun)))

(require 'fstar-mode)
(setq-default fstar-executable "~/.local/fstar/bin/fstar.exe")
(setq-default fstar-smt-executable "/usr/bin/z3")

;; (setq lsp-vhdl-server-path "~/.local/bin/vhdl-tool")
;; (add-hook 'vhdl-mode-hook 'lsp)
(lsp-register-client
 (make-lsp-client :new-connection (lsp-stdio-connection "~/.local/rust_hdl/target/release/vhdl_ls")
                  :major-modes '(vhdl-mode)
                  :server-id 'vhdl-lsp))
(add-to-list 'lsp-language-id-configuration '(vhdl-mode . "vhdl-mode"))
(add-hook 'vhdl-mode-hook #'lsp)

(require 'lsp-pyls)
(lsp-register-client
 (make-lsp-client :new-connection (lsp-stdio-connection "/usr/bin/pyls")
                  :major-modes '(python-mode)
                  :server-id 'python-lsp))
(add-to-list 'lsp-language-id-configuration '(python-mode . "python-mode"))
(add-hook 'python-mode-hook #'lsp) ; or lsp-deferred

(require 'k-mode)
(require 'k3-mode)

;;; Commentary:
;;; Code:

;;; languages.el ends here
