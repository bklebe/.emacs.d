(use-package omnisharp :defer t
  :after company
  :hook (csharp-mode . omnisharp-mode)
  :config
  (add-to-list 'company-backends 'company-omnisharp)
  :delight)

(use-package csharp-mode :defer t
  :bind (("C-c r r" . omnisharp-run-code-action-refactoring)
         ("C-c C-c" . recompile))
  :config
  (electric-pair-local-mode 1)
  :delight)

(use-package fsharp-mode :defer t)

(provide 'dotnet)
