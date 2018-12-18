(setq omnisharp-expected-server-version "1.32.9-beta.20")

(use-package omnisharp :defer t
  :after company
  :bind (("C-c r r" . omnisharp-run-code-action-refactoring)
         ("C-c C-c" . recompile))
  :hook (csharp-mode . omnisharp-mode)
  :config
  (c-toggle-auto-newline)
  ;; (electric-pair-local-mode 1)
  (add-to-list 'company-backends 'company-omnisharp)
  :delight)

(use-package csharp-mode :defer t)

(use-package fsharp-mode :defer t)

(provide 'dotnet)
