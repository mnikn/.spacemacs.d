(defun webmode-format-before-save ()
  (when (eq major-mode 'web-mode) (web-beautify-html)))
(defun react-format-before-save ()
  (when (eq major-mode 'react-mode) (web-beautify-js)))
(defun js2-format-before-save ()
  (when (eq major-mode 'js2-mode) (web-beautify-js)))
(defun typescript-format-before-save ()
  (when (eq major-mode 'js2-mode) (web-beautify-js)))

(use-package web-mode
  :mode
  ("\\.vue". web-mode)
  :config
  (add-hook 'before-save-hook 'webmode-format-before-save)
  )
(use-package react-mode
  :mode
  ("\\.tsx" . react-mode)
  :config
  (add-hook 'before-save-hook 'react-format-before-save))
(use-package js2-mode
  :config
  (add-hook 'before-save-hook 'js2-format-before-save))
(use-package typescript-mode
  :config
  (add-hook 'before-save-hook 'typescript-format-before-save))

(provide 'init-frontend)
