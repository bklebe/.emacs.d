;;; dotnet --- Packages and configuration for working with .NET
;;; Commentary:

;;; Code:

(setq omnisharp-expected-server-version "1.32.11")

(use-package omnisharp :defer t
  :after company
  :bind (("C-c r r" . omnisharp-run-code-action-refactoring)
         ("C-c C-c" . recompile))
  :hook (csharp-mode . omnisharp-mode)
  :config
  (c-toggle-auto-newline)
  (add-to-list 'company-backends 'company-omnisharp)
  :delight)

(use-package csharp-mode :defer t)

(use-package fsharp-mode :defer t)

(provide 'dotnet)
;;; dotnet.el ends here
