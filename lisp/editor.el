(setq require-final-newline t)
(delete-selection-mode t)
(setq-default indent-tabs-mode nil)   ;; don't use tabs to indent
(setq-default tab-width 8)            ;; but maintain correct appearance
(setq tab-always-indent 'complete)
(add-hook 'before-save-hook 'delete-trailing-whitespace)
(setq next-line-add-newlines nil)

(provide 'editor)
