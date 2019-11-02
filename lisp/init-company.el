(add-hook 'after-init-hook 'global-company-mode)
(add-hook 'org-mode-hook '(lambda () (company-mode -1)))
(add-hook 'rlogin-mode-hook '(lambda () (company-mode -1)))
(add-hook 'eshell-mode-hook '(lambda () (company-mode -1)))
(setq-default company-auto-complete t
              company-auto-complete-chars nil
              company-dabbrev-code-everywhere t
              company-dabbrev-downcase 2
              company-dabbrev-minimum-length 1
              company-idle-delay 0
              company-minimum-prefix-length 1
              company-show-numbers t)

(provide 'init-company)
