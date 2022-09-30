(savehist-mode 1)
(setq history-length 100000)

;; (desktop-save-mode 1) TODO set it but not save or start lsp sessions?
(set 'desktop-auto-save-timeout 300) ;; It saves each 5 minutes

(setq-default fill-column 80)
(setq require-final-newline nil) ;; TODO for all modes

;; dired - Not split frame when clicking with mouse
;; (define-key dired-mode-map [mouse-2] 'dired-find-file)
;; (define-key dired-mode-map [mouse-3] 'dired-do-async-shell-command)
;; Undo
(require 'undo-tree)
(defalias 'redo 'undo-tree-redo)
(global-undo-tree-mode 1)

(require 'ox-reveal) ;; org to reveal.js
;; Search improved
(setq completion-ignore-case  t)
(setq read-file-name-completion-ignore-case  t)
(setq read-buffer-completion-ignore-case  t)

;; (require 'counsel) ;; interactive functions
;; (require 'ivy)
;; (ivy-mode 1)
;; (setq ivy-use-virtual-buffers t)
;; (setq enable-recursive-minibuffers t)
;; ;; (define-key ivy-minibuffer-map (kbd "TAB") 'ivy-partial) ;; To avoid execution by pressing TAB
;; (require 'ivy-prescient)
;; (ivy-prescient-mode 1)
;; (prescient-persist-mode 1)
;; (global-set-key (kbd "M-x") 'counsel-M-x)
;; (global-set-key (kbd "C-x C-f") 'counsel-find-file)
;; (global-set-key (kbd "<f1> f") 'counsel-describe-function)
;; (global-set-key (kbd "<f1> v") 'counsel-describe-variable)
;; (global-set-key (kbd "<f1> o") 'counsel-describe-symbol)
;; (global-set-key (kbd "<f1> l") 'counsel-find-library)
;; (global-set-key (kbd "<f2> i") 'counsel-info-lookup-symbol)
;; (global-set-key (kbd "<f2> u") 'counsel-unicode-char)
;; (global-set-key (kbd "C-c g") 'counsel-git)
;; (global-set-key (kbd "C-c j") 'counsel-git-grep)
;; (global-set-key (kbd "C-c k") 'counsel-ag)
;; (global-set-key (kbd "C-x l") 'counsel-locate)
;; (global-set-key (kbd "C-S-o") 'counsel-rhythmbox)

(require 'multiple-cursors)
(global-set-key (kbd "C-S-c C-S-c") 'mc/edit-lines)
(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)

;; ;; smex
(require 'smex)
(smex-initialize) ; Can be omitted. This might cause a (minimal) delay
;; when Smex is auto-initialized on its first run.

(require 'hideshow)

(require 'smartparens)
(smartparens-global-mode t)
;; (dolist (fun '(c-electric-paren c-electric-brace))
;;   (add-to-list 'sp--special-self-insert-commands fun))
;; Smartparens doesn handle correctly parenthesis, we use electric-pair-mode
(add-to-list 'sp-ignore-modes-list 'c-mode)
(add-hook 'c-mode-hook 'electric-pair-mode)

(add-to-list 'sp-ignore-modes-list 'c++-mode)
(add-hook 'c++-mode-hook 'electric-pair-mode)

(add-to-list 'sp-ignore-modes-list 'sh-mode)
(add-hook 'sh-mode-hook 'electric-pair-mode)

(add-to-list 'sp-ignore-modes-list 'LaTeX-mode)
(add-hook 'LaTeX-mode-hook 'electric-pair-mode)

(add-to-list 'sp-ignore-modes-list 'python-mode)
(add-hook 'python-mode-hook 'electric-pair-mode)


(require 'company)
;; (add-hook 'after-init-hook 'global-company-mode)
(require' flycheck)
(global-flycheck-mode)
;; Magit
(require' magit)
(with-eval-after-load 'info
  (info-initialize)
  (add-to-list 'Info-directory-list
               "~/.emacs.d/site-lisp/magit/Documentation/"))


;; Clean buffers
(defun kill-buffers()
  "Kill all buffers."
  (let (buffer buffers)
    (setq buffers (buffer-list))
    (dotimes (i (length buffers))
      (setq buffer (pop buffers))
      (if (not (string-equal (buffer-name buffer) "*scratch*")) (kill-buffer buffer) nil))))

(defun clean-buffers()
  "Interactive killall the buffers."
  (interactive)
  (if (yes-or-no-p "Do you really want to clean all buffers? ")
      (kill-buffers) nil))
(global-set-key (kbd "C-x C-k") 'clean-buffers)
(provide 'clean-buffers)
;; I LOVE this commands
(global-set-key (kbd "C-c C-v") 'undo-tree-visualize)
(global-set-key (kbd "<f2>") 'undo-tree-visualize)
(global-set-key (kbd "<f5>") 'bs-show)
(global-set-key (kbd "C-<tab>") 'company-dabbrev)

(require 'clang-format)

;; (require 'vterm)
(require 'vlf-setup)
(setq auto-save-list-file-prefix nil)
(setq auto-save-list-file-name nil)
