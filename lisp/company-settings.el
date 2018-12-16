(use-package company
  :init
  (global-company-mode)
  :config
  (setq company-idle-delay 0)
  (setq company-dabbrev-downcase 0))

(provide 'company-settings)
