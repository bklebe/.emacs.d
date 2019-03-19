;;; company-config.el --- Setup for company-mode -*- lexical-binding: t; -*-

;;; Commentary:

;;; Code:

(use-package company
  :hook (prog-mode . company-mode)
  :config
  (setq company-idle-delay 0)
  (setq company-dabbrev-downcase nil))

(provide 'company-config)
;;; company-config.el ends here
