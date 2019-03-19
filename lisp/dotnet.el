;;; dotnet.el --- Setup for .NET development -*- lexical-binding: t; -*-

;;; Commentary:

;;; Code:


(setq omnisharp-expected-server-version "1.32.10")

(use-package omnisharp
  :after company
  :bind (("C-c r r" . omnisharp-run-code-action-refactoring)
         ("C-c C-c" . recompile))
  :hook (csharp-mode . omnisharp-mode)
  :config
  (c-toggle-auto-newline)
  (add-to-list 'company-backends 'company-omnisharp))

(use-package csharp-mode)

(use-package fsharp-mode)

(provide 'dotnet)
;;; dotnet.el ends here
