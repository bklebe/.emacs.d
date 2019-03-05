;;; company-config.el --- Setup for company-mode

;;; Commentary:

;;; Code:

(use-package company :demand t
  :config
  (setq company-idle-delay 0)
  (setq company-dabbrev-downcase nil)
  (global-company-mode)
  :delight)

(provide 'company-config)
;;; company-config.el ends here
