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
