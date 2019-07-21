(savehist-mode 1)
(require 'multi-term)
(require 'smartparens)
(smartparens-global-mode t)
(require 'company)
(add-hook 'after-init-hook 'global-company-mode)
(require' flycheck)
(global-flycheck-mode)
;; Magit
(require' magit)
(global-set-key (kbd "C-x g") 'magit-status)
(global-set-key (kbd "C-x M-g") 'magit-dispatch-popup)
;; Undo
(require 'undo-tree)
(defalias 'redo 'undo-tree-redo)
(global-undo-tree-mode 1)
(global-set-key (kbd "C-z") 'undo)
(global-set-key (kbd "C-x C-z") 'undo)
(global-set-key (kbd "C-S-z") 'redo)
(global-set-key (kbd "C-M-z") 'redo)
(require 'ox-reveal)
;; Search improved
(setq completion-ignore-case  t)
(setq read-file-name-completion-ignore-case  t)
(setq read-buffer-completion-ignore-case  t)
;; smex
(require 'smex)
(smex-initialize) ; Can be omitted. This might cause a (minimal) delay
;; when Smex is auto-initialized on its first run.
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
;; This is your old M-x.
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)
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

(require 'vterm)
