
;; (prelude-require-packages '(some-package some-other-package))
;; (prelude-require-package 'some-package)

;; Are we on a mac?
(setq is-mac (equal system-type 'darwin))

; when a mac, be a mac
(when is-mac (require 'mac))

;; No splash screen
(setq inhibit-startup-message t)

;; Write backup files to own directory
(setq backup-directory-alist
      `(("." . ,(expand-file-name
                 (concat user-emacs-directory "backups")))))
