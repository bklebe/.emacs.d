(use-package merlin :defer t
  :hook (tuareg-mode . merlin-mode)
  :config
  (setq merlin-error-after-save nil)
  (add-to-list 'company-backends 'merlin-company-backend)
  (flycheck-ocaml-setup)
  :delight)

(use-package utop :defer t
  :hook (tuareg-mode . utop-minor-mode)
  :delight)

(use-package flycheck-ocaml :defer t)

(use-package tuareg :defer t
  :delight)

(provide 'ocaml)
