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
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(bs-default-configuration "all")
 '(custom-enabled-themes (quote (kaolin-bubblegum)))
 '(custom-safe-themes
   (quote
    ("d2e9c7e31e574bf38f4b0fb927aaff20c1e5f92f72001102758005e53d77b8c9" "f0dc4ddca147f3c7b1c7397141b888562a48d9888f1595d69572db73be99a024" "a8c210aa94c4eae642a34aaf1c5c0552855dfca2153fa6dd23f3031ce19453d4" "fe666e5ac37c2dfcf80074e88b9252c71a22b6f5d2f566df9a7aa4f9bea55ef8" "6d589ac0e52375d311afaa745205abb6ccb3b21f6ba037104d71111e7e76a3fc" "9954ed41d89d2dcf601c8e7499b6bb2778180bfcaeb7cdfc648078b8e05348c6" "49ec957b508c7d64708b40b0273697a84d3fee4f15dd9fc4a9588016adee3dad" "6b2636879127bf6124ce541b1b2824800afc49c6ccd65439d6eb987dbf200c36" "cd736a63aa586be066d5a1f0e51179239fe70e16a9f18991f6f5d99732cabb32" "43c808b039893c885bdeec885b4f7572141bd9392da7f0bd8d8346e02b2ec8da" "8aca557e9a17174d8f847fb02870cb2bb67f3b6e808e46c0e54a44e3e18e1020" "6b289bab28a7e511f9c54496be647dc60f5bd8f9917c9495978762b99d8c96a0" "93a0885d5f46d2aeac12bf6be1754faa7d5e28b27926b8aa812840fe7d0b7983" "75d3dde259ce79660bac8e9e237b55674b910b470f313cdf4b019230d01a982a" "10461a3c8ca61c52dfbbdedd974319b7f7fd720b091996481c8fb1dded6c6116" "151bde695af0b0e69c3846500f58d9a0ca8cb2d447da68d7fbf4154dcf818ebc" "d1b4990bd599f5e2186c3f75769a2c5334063e9e541e37514942c27975700370" "a3fa4abaf08cc169b61dea8f6df1bbe4123ec1d2afeb01c17e11fdc31fc66379" "fd944f09d4d0c4d4a3c82bd7b3360f17e3ada8adf29f28199d09308ba01cc092" "2433283e8d6bf25ee31b8dc1907ee55880c2b2c758c82786788abd1d029f61f9" "1438a0656b1b25c0589edcb51229710d8c710ae86ddae4238c5e9226f58ab336" "14157dcd9c4e5669d89af65628f4eaf3247e24c2c0d134db48951afb2bdad421" "78cb079a46e0b94774ed0cdc9bd2cde0f65a0b964541c221e10a7709e298e568" "add84a254d0176ffc2534cd05a17d57eea4a0b764146139656b4b7d446394a54" "811dabdae799fd679ab73ec15c987096ca7573afb43de3474c27405f032a7b9e" "d2868794b5951d57fb30bf223a7e46f3a18bf7124a1c288a87bd5701b53d775a" "3cacf6217f589af35dc19fe0248e822f0780dfed3f499e00a7ca246b12d4ed81" "9399db70f2d5af9c6e82d4f5879b2354b28bc7b5e00cc8c9d568e5db598255c4" "9a3366202553fb2d2ad1a8fa3ac82175c4ec0ab1f49788dc7cfecadbcf1d6a81" "e3d6636d03c788a416157c9d34184672b500d63d82de0e2d9f36e9975fd63b9f" "058b8c7effa451e6c4e54eb883fe528268467d29259b2c0dc2fd9e839be9c92e" default)))
 )

; @begin(38363236)@ - Do not edit these lines - added automatically!
(if (file-exists-p "/home/andsanmar/.local/ciao/ciao_emacs/elisp/ciao-site-file.el")
  (load-file "/home/andsanmar/.local/ciao/ciao_emacs/elisp/ciao-site-file.el"))
; @end(38363236)@ - End of automatically added lines.
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
