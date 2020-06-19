;;; windows-config.el --- OS-specific settings for Windows -*- lexical-binding: t; -*-

;;; Commentary:

;;; Code:

(add-to-list 'default-frame-alist '(font . "Consolas-12"))
(setq default-directory "~/")

(use-package powershell)

(setq tramp-default-method "plink")

(setq tramp-histfile-override "/dev/null")

(provide 'windows-config)
;;; windows-config.el ends here
