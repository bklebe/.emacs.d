;;; backup.el --- Configuring emacs' automatic backup settings

;;; Commentary:
;;; This is cribbed from EmacsWiki.

;;; Code:

;;; store all backup and autosave files in the tmp dir
(setq backup-directory-alist
      `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms
      `((".*" ,temporary-file-directory t)))

(provide 'backup)
;;; backup.el ends here
