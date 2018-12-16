;;; backup.el --- Configuring emacs' automatic backup settings
;;; Commentary:
;;; This should all look relatively familiar, it's taken from the EmacsWiki
;;; mostly with a few choice selections from Emacs Prelude.

;;; store all backup and autosave files in the tmp dir
(setq backup-directory-alist
      `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms
      `((".*" ,temporary-file-directory t)))

;;; autosave the undo-tree history
(setq undo-tree-history-directory-alist
      `((".*" . ,temporary-file-directory)))
(setq undo-tree-auto-save-history t)

(provide 'backup)
;;; backup.el ends here
