(define-key key-translation-map (kbd "ESC") (kbd "C-g"))

;; evil
(evil-define-key '(normal motion visual) 'global "K" 'mnikn/evil-move-up)
(evil-define-key '(normal motion visual) 'global "J" 'mnikn/evil-move-down)
(evil-define-key '(normal motion visual) 'global "H" 'evil-first-non-blank)
(evil-define-key '(normal motion visual) 'global "L" 'evil-end-of-line)
(evil-define-key 'normal 'global "s" 'save-buffer)

(spacemacs/set-leader-keys
  "SPC" 'ivy-switch-buffer
  "," 'counsel-M-x)


(provide 'init-keybindings)
