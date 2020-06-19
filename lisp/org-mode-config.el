;;; org-mode-config.el --- Setup for org-mode -*- lexical-binding: t; -*-

;;; Commentary:

;;; Code:

(use-package org
             :bind (("C-c l" . org-store-link)
                    ("C-c a" . org-agenda)
                    ("C-c c" . org-capture)
                    ("C-c b" . org-switchb)))

(setq org-export-backends '(md txt))

(provide 'org-mode-config)
;;; org-mode-config.el ends here
