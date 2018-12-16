(eval-and-compile (require 'use-package))

(use-package merlin
  :hook (tuareg-mode . merlin-mode)
  :config
  (setq merlin-error-after-save nil)
  (add-to-list 'company-backends 'merlin-company-backend))

(use-package utop
  :hook (tuareg-mode . utop-minor-mode))

(use-package flycheck-ocaml
  :config
  (flycheck-ocaml-setup))

(use-package tuareg :defer t)

(provide 'ocaml)
