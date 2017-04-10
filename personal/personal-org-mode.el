;; use org-bullets-mode for utf8 symbols as org bullets
(require 'org-bullets)

;; make available "org-bullet-face" such that I can control the font size individually
(setq org-bullets-face-name (quote org-bullet-face))

(add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))
(setq org-bullets-bullet-list '("✙" "♱" "♰" "☥" "✞" "✟" "✝" "†" "✠" "✚" "✜" "✛" "✢" "✣" "✤" "✥"))


;; org ellipsis options, other than the default Go to Node...
;; not supported in common font, but supported in Symbola (my fall-back font) ⬎, ⤷, ⤵
;; (setq org-ellipsis "⚡⚡⚡") ;; ⤵
(setq org-ellipsis "∘∘∘")
;(set-face-attribute 'org-bullet-face
;                    t :foreground "burlywood" :weight 'normal :height 1.6)

(custom-set-faces
 '(org-bullet-face ((t (:foreground "burlywood" :weight normal :height 1.5)))))

;; Alternate Ellipsis

;right arrows
;“↝” “⇉” “⇝” “⇢” “⇨” “⇰” “➔” “➙” “➛” “➜” “➝” “➞”

;“➟” “➠” “➡” “➥” “➦” “➧” “➨”

;“➩” “➪” “➮” “➯” “➱” “➲”

;“➳” “➵” “➸” “➺” “➻” “➼” “➽”

;arrow heads
;“➢” “➣” “➤” “≪”, “≫”, “«”, “»”

;other arrows
;“↞” “↠” “↟” “↡” “↺” “↻”

;lightening
;“⚡”

;other symbols
;…, ▼, ↴, , ∞, ⬎, ⤷, ⤵


;; Alternate Bullets
;hexagrams
;“✡” “⎈” “✽” “✲” “✱” “✻” “✼” “✽” “✾” “✿” “❀” “❁” “❂” “❃” “❄” “❅” “❆” “❇”

;circles
;“○” “☉” “◎” “◉” “○” “◌” “◎” “●” “◦” “◯” “⚪” “⚫” “⚬” “❍” “￮” “⊙” “⊚” “⊛” “∙” “∘”

;special circles
;“◐” “◑” “◒” “◓” “◴” “◵” “◶” “◷” “⚆” “⚇” “⚈” “⚉” “♁” “⊖” “⊗” “⊘”

;crosses
;“✙” “♱” “♰” “☥” “✞” “✟” “✝” “†” “✠” “✚” “✜” “✛” “✢” “✣” “✤” “✥”

;poker symbols
;“♠” “♣” “♥” “♦” “♤” “♧” “♡” “♢”

;yin yang
;“☯” “☰” “☱” “☲” “☳” “☴” “☵” “☶” “☷”

;special symbols
;“☀” “♼” “☼” “☾” “☽” “☣” “§” “¶” “‡” “※” “✕” “△” “◇” “▶” “◀” “◈”
