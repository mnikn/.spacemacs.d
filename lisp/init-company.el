(global-company-mode)
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

(add-hook 'go-mode-hook
          (lambda ()
            (setq (company-backends '(company-dabbrev-code company-dabbrev company-etags company-keywords company-files)))))
(add-hook 'web-mode-hook
          (lambda ()
            (setq (company-backends '(company-dabbrev-code company-dabbrev company-etags company-keywords company-files)))))
(add-hook 'js2-mode-hook
          (lambda ()
            (setq (company-backends '(company-dabbrev-code company-dabbrev company-etags company-keywords company-files)))))

(provide 'init-company)
