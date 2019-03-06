;;; ocaml.el --- Setup for OCaml programming

;;; Commentary:

;;; Code:

(use-package merlin
  :hook (tuareg-mode . merlin-mode)
  :config
  (setq merlin-error-after-save nil)
  (add-to-list 'company-backends 'merlin-company-backend)
  (flycheck-ocaml-setup))

(use-package utop
  :hook (tuareg-mode . utop-minor-mode)
  :config
  (setq utop-command "opam config exec utop -- -emacs"))

(use-package flycheck-ocaml)

(use-package tuareg
  :bind ("C-c C-s" . utop)
  :config
  (setq compile-command "opam config exec corebuild "))

(use-package dune)

(provide 'ocaml)
;;; ocaml.el ends here
