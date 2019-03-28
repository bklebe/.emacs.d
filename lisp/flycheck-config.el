;;; flycheck-config.el --- Settings for Emacs Flycheck -*- lexical-binding: t; -*-

;;; Commentary:

;;; Code:

(use-package flycheck
  :hook (prog-mode . flycheck-mode)
  :config
  (add-to-list 'flycheck-emacs-lisp-load-path lisp-dir))

(provide 'flycheck-config)
;;; flycheck-config.el ends here
