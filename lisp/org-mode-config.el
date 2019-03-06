;;; org-mode-config.el --- Setup for org-mode

;;; Commentary:

;;; Code:

(use-package org
             :bind (("C-c l" . org-store-link)
                    ("C-c a" . org-agenda)
                    ("C-c c" . org-capture)
                    ("C-c b" . org-switchb)))

(provide 'org-mode-config)
;;; org-mode-config.el ends here
