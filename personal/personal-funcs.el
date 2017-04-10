(global-set-key (kbd "S-<down>")  'shrink-window-if-larger-than-buffer)
(global-set-key (kbd "S-<up>")    'enlarge-window)
(global-set-key (kbd "S-<left>")  'shrink-window-horizontally)
(global-set-key (kbd "S-<right>") 'enlarge-window-horizontally)

;; use ~/.ssh/config controlmaster options
(setq tramp-use-ssh-controlmaster-options nil)

; set margins..
(defun set-my-margins ()
  (interactive)
  (setq left-margin-width 10)
  ;; (setq right-margin-width 1)
  (setq left-fringe-width 25)
  (setq right-fringe-width 25)
)

(add-hook 'text-mode-hook 'set-my-margins)
(add-hook 'prog-mode-hook 'set-my-margins)

(add-hook 'prog-mode-hook
          (lambda () (setq prettify-symbols-alist
                           '(
                             ("=>" . ?⇒)
                             ("<-" . ?←)
                             ("->" . ?→)
                             ("<<<" . ?⋘)
                             (">>>" . ?⋙)
                             ("lambda" . ?λ)
                             ("function" . ?λ)
                             ))))


(global-prettify-symbols-mode t)
