;; autojoin
 (setq erc-autojoin-channels-alist '(
                                     ("svale.netledger.com" "#sre" "#netledger"
                                      "#maintenance" "#dc" "#ops" "#netops" "#opssa"
                                      "#ops_maintenance" )
;;                                    ("gnu.org" "#emacs" "#gluster")
;;                                    ("freenode.net" "#linux" "#python")
                                    ))
(setq erc-hide-list '("PART" "QUIT" "JOIN"))

(setq erc-keywords '(("\\bsa?\\b" erc-keyword-face)
                     ("\\bsre\\b" erc-keyword-face)
                     ("\\bgfs\\b" erc-keyword-erc-face)
                     ("\\bmattk?\\b" erc-keyword-erc-face)))

(defface erc-keyword-erc-face '((t (:foreground "Orchid")))
  "ERC face to highlight occurances of the word erc"
  :group 'erc-faces)

;; start the IRC Servers
;;; Finally, connect to the networks.
(defun irc-maybe ()
  "Connect to IRC."
  (interactive)
  (when (y-or-n-p "IRC? ")
;;    (erc :server "chat.freenode.net" :port 6667 :nick "mattk")
;;    (erc :server "irc.gnu.org" :port 6667 :nick "mattk")
    (erc :server "irc.svale.netledger.com" :port 6667 :nick "mattk")))


;;;; Using IDO Select with ERC
;(defun rgr/ido-erc-buffer()
;  (interactive)
;  (switch-to-buffer
;   (ido-completing-read "Channel:"
;                        (save-excursion
;                          (delq
;                           nil
;                           (mapcar (lambda (buf)
;                                     (when (buffer-live-p buf)
;                                       (with-current-buffer buf
;                                         (and (eq major-mode 'erc-mode)
;                                              (buffer-name buf)))))
;                                   (buffer-list)))))))

; (global-set-key (kbd "C-c e") 'rgr/ido-erc-buffer)

;;;;;;;;;;;;;;;;

;; I use ERC, and I wanted to bind something to the equivalent of “C-x b #”: that is,
;; launching ido-switch-buffer and hitting a # so that ERC channels are given as options.
;; However, it’s tough in general to write elisp or keyboard macros that run a
;; command and start entering things into a minibuffer without finishing the prompt.
;; For this special case, though, this elisp works:

; (ido-buffer-internal ido-default-buffer-method nil nil nil "#")

;;;;;;;;;;;;;

; bind to F1 or related to switch back and forth between buffers
; (global-set-key (kbd "M-o")  'mode-line-other-buffer)

;; Bind to PU/PG or something
; (global-set-key (kbd "M-o")  'next-buffer)
; (global-set-key (kbd "M-o")  'prev-buffer)
