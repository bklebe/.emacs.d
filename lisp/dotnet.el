(use-package omnisharp :defer t
  :hook (csharp-mode . omnisharp-mode)
  :config
  (add-to-list 'company-backends 'company-omnisharp))

(use-package csharp-mode :defer t)
(use-package fsharp-mode :defer t)

(provide 'dotnet)
