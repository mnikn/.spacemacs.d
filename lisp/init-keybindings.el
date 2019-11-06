(define-key key-translation-map (kbd "ESC") (kbd "C-g"))

(evil-define-key '(normal insert) 'global (kbd "<f1>") 'toggle-input-method)

;; evil
(evil-define-key '(normal motion visual) 'global "K" 'mnikn/evil-move-up)
(evil-define-key '(normal motion visual) 'global "J" 'mnikn/evil-move-down)
(evil-define-key '(normal motion visual) 'global "H" 'evil-first-non-blank)
(evil-define-key '(normal motion visual) 'global "L" 'evil-end-of-line)
(evil-define-key 'normal 'global "s" 'save-buffer)
(evil-define-key '(normal motion visual) 'global "f" 'avy-goto-char-in-line)

;; ivy
(define-key ivy-minibuffer-map (kbd "C-j") 'ivy-next-line)
(define-key ivy-minibuffer-map (kbd "C-k") 'ivy-previous-line)
(define-key ivy-minibuffer-map (kbd "C-;") 'ivy-backward-delete-char)

(spacemacs/set-leader-keys-for-major-mode 'js2-mode
  "RET" 'web-beautify-js)

(spacemacs/set-leader-keys
  "SPC" 'ivy-switch-buffer
  "RET" 'indent-region
  "," 'counsel-M-x
  "." 'ansi-term
  "/" 'evil-commentary-line
  "<left>" 'windmove-left
  "<right>" 'windmove-right
  "<up>" 'windmove-up
  "<down>" 'windmove-down
  "bk" 'kill-buffer
  "ad" 'dired-jump
  "fp" 'ffap
  "ggl" 'magit-log-buffer-file
  "ggg" 'magit-log-current
  "xh" 'mark-whole-buffer
  "si" 'counsel-imenu
  "sd" 'swiper-thing-at-point
  "sj" 'counsel-etags-find-tag-at-point
  "sap" 'counsel-projectile-ag
  "sgp" 'counsel-projectile-git-grep)


(provide 'init-keybindings)
