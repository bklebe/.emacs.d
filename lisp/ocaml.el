(eval-and-compile (require 'use-package))

(use-package merlin :defer t
  :config
  (setq merlin-error-after-save nil)
  (add-to-list 'company-backends 'merlin-company-backend))

(use-package utop :defer t)

(use-package flycheck-ocaml :defer t
  :after flycheck-mode
  :config
  (flycheck-ocaml-setup))

(use-package tuareg :defer t
  :after (utop merlin flycheck-ocaml)
  :hook (utop-minor-mode merlin-mode))

(provide 'ocaml)
