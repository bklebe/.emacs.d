(use-package merlin :defer t
  :hook (tuareg-mode . merlin-mode)
  :config
  (setq merlin-error-after-save nil)
  (add-to-list 'company-backends 'merlin-company-backend)
  (flycheck-ocaml-setup))

(use-package utop :defer t
  :hook (tuareg-mode . utop-minor-mode))

(use-package flycheck-ocaml :defer t)

(use-package tuareg :defer t
  :init (exec-path-from-shell-initialize))

(provide 'ocaml)
