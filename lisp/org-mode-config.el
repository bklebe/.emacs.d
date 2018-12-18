(use-package org :defer t
             :bind (("C-c l" . org-store-link)
                    ("C-c a" . org-agenda)
                    ("C-c c" . org-capture)
                    ("C-c b" . org-switchb))
             :delight)

(provide 'org-mode-config)
