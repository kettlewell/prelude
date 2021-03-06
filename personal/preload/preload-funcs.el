;; (prelude-require-packages '(some-package some-other-package))
;; (prelude-require-package 'some-package)

;; Are we on a mac?
; (setq is-mac (equal system-type 'darwin))

; when a mac, be a mac
; (when is-mac (require 'mac))

;; No splash screen
; (setq inhibit-startup-message t)

;; Write backup files to own directory
;(setq backup-directory-alist
;      `(("." . ,(expand-file-name
;                 (concat user-emacs-directory "backups")))))

;; trying to clean up the recentf files that are slowing things down on startup
(require 'recentf)
(setq recentf-auto-cleanup 'never) ;; disable before we start recentf!
(setq recentf-keep '(file-remote-p file-readable-p))
(recentf-mode 1)

(require 'ido)
(defun ido-remove-tramp-from-cache nil
  "Remove any TRAMP entries from `ido-dir-file-cache'.
    This stops tramp from trying to connect to remote hosts on emacs startup,
    which can be very annoying."
  (interactive)
  (setq ido-dir-file-cache
        (cl-remove-if
         (lambda (x)
           (string-match "/\\(rsh\\|ssh\\|telnet\\|su\\|sudo\\|sshx\\|krlogin\\|ksu\\|rcp\\|scp\\|rsync\\|scpx\\|fcp\\|nc\\|ftp\\|smb\\|adb\\):" (car x)))
         ido-dir-file-cache)))
;; redefine `ido-kill-emacs-hook' so that cache is cleaned before being saved
(defun ido-kill-emacs-hook ()
  (ido-remove-tramp-from-cache)
  (ido-save-history))
