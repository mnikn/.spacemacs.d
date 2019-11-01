(defun mnikn/evil-move-up ()
  "Move 10 lines up"
  (interactive)
  (evil-previous-line 10))

(defun mnikn/evil-move-down ()
  "Move 10 lines down"
  (interactive)
  (evil-next-line 10))

(defun mnikn/evil-newline-below ()
  "Newline below in evil"
  (interactive)
  (evil-open-below 1)
  (evil-force-normal-state))

(defun mnikn/evil-newline-above ()
  "Newline below in evil"
  (interactive)
  (evil-open-above 1)
  (evil-force-normal-state))

(provide 'init-functions)
