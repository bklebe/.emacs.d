;;; flycheck-config.el --- Settings for Emacs Flycheck

;;; Commentary:

;;; Code:

(use-package flycheck :demand t
  :config
  (global-flycheck-mode)
  (add-to-list 'flycheck-emacs-lisp-load-path lisp-dir))

(provide 'flycheck-config)
;;; flycheck-config.el ends here
