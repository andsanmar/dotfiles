;;; package --- Summary:

;; Add all subdirectories into the load-path
(let ((base "~/.emacs.d/site-lisp"))
  (add-to-list 'load-path base)
  (dolist (f (directory-files base))
    (let ((name (concat base "/" f)))
      (when (and (file-directory-p name)
                 (not (equal f ".."))
                 (not (equal f ".")))
(add-to-list 'load-path name)))))

;; Initialization
(require 'package)
(package-initialize)
(load-file "~/.emacs.d/functionality.el")
(load-file "~/.emacs.d/appearance.el")
(load-file "~/.emacs.d/languages.el")

;;; init.el ends here

;;; Commentary:
;;; Code:

(custom-set-variables
 '(bs-default-configuration "all")
 '(custom-enabled-themes (quote (kaolin-aurora)))
 '(custom-safe-themes
   (quote
    ("058b8c7effa451e6c4e54eb883fe528268467d29259b2c0dc2fd9e839be9c92e" default)))
 '(org-agenda-files nil)
 '(package-selected-packages
   (quote (org-babel-eval-in-repl))))
