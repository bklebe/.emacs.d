(use-package merlin :defer t
  :config
  (setq merlin-error-after-save nil))

(use-package utop :defer t)

(use-package flycheck-ocaml :defer t
  :config
  (flycheck-ocaml-setup))
(use-package tuareg :defer t
  :after company
  :mode ("\\.ml[ily]?\\'" "\\.topml\\'")
  :hook (utop-minor-mode merlin-mode)
  :config
  (add-to-list 'company-backends 'merlin-company-backend))

(provide 'ocaml)
