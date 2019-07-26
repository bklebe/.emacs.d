;;; ocaml.el --- Setup for OCaml programming -*- lexical-binding: t; -*-

;;; Commentary:

;;; Code:

(use-package tuareg
  :bind ("C-c C-s" . utop)
  :config
  (setq compile-command "opam config exec corebuild "))

(use-package merlin
  :after company-mode
  :hook (tuareg-mode . merlin-mode)
  :config
  (setq merlin-error-after-save nil)
  (add-to-list 'company-backends 'merlin-company-backend)
  (flycheck-ocaml-setup))

(use-package flycheck-ocaml)

(use-package utop
  :hook (tuareg-mode . utop-minor-mode)
  :config
  (setq utop-command "opam config exec utop -- -emacs"))

(use-package dune)

(provide 'ocaml)
;;; ocaml.el ends here
