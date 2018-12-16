(use-package merlin :defer t
  :hook (tuareg-mode . merlin-mode)
  :config
  (setq merlin-error-after-save nil)
  (add-to-list 'company-backends 'merlin-company-backend)
  (flycheck-ocaml-setup)
  :delight)

(use-package utop :defer t
  :hook (tuareg-mode . utop-minor-mode)
  :config
  (setq utop-command "opam config exec utop -- -emacs")
  :delight utop-minor-mode)

(use-package flycheck-ocaml :defer t)

(use-package tuareg :defer t
  :bind ("C-c C-s" . utop)
  :config
  (setq compile-command "opam config exec corebuild ")
  :delight)

(provide 'ocaml)
