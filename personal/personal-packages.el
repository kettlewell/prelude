;; (prelude-require-package 'afternoon-theme)
(prelude-require-packages '(afternoon-theme badwolf-theme info+ neotree all-the-icons))

;; neotree configs
(require 'neotree)
(global-set-key [f8] 'neotree-toggle)
(setq neo-theme (if (display-graphic-p) 'icons 'arrow))
(setq neo-smart-open t)
(setq neo-window-width 38)
