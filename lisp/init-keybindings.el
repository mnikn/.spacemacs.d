(define-key key-translation-map (kbd "ESC") (kbd "C-g"))

(evil-define-key '(normal insert) 'global (kbd "<f1>") 'toggle-input-method)

;; evil
(evil-define-key '(normal motion visual) 'global "K" 'mnikn/evil-move-up)
(evil-define-key '(normal motion visual) 'global "J" 'mnikn/evil-move-down)
(evil-define-key '(normal motion visual) 'global "H" 'evil-first-non-blank)
(evil-define-key '(normal motion visual) 'global "L" 'evil-end-of-line)
(evil-define-key 'normal 'global "s" 'save-buffer)
(evil-define-key '(normal motion visual) 'global "f" 'avy-goto-char-in-line)

(spacemacs/set-leader-keys
  "SPC" 'ivy-switch-buffer
  "," 'counsel-M-x
  "." 'ansi-term
  "/" 'evil-commentary-line
  "<left>" 'windmove-left
  "<right>" 'windmove-right
  "<up>" 'windmove-up
  "<down>" 'windmove-down
  "bk" 'kill-buffer
  "sd" 'swiper-thing-at-point
  "ad" 'dired-jump
  "fp" 'ffap)


(provide 'init-keybindings)
