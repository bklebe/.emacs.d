;; Cribs liberally from bbatsov/prelude/core/prelude-packages.el
(require 'cl)
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)

; fetch the list of packages available
(unless package-archive-contents
  (package-refresh-contents))

(package-initialize)

(defvar bootstrap-packages
  '(use-package
    delight))

(defun bootstrap-packages-installed-p ()
  "Check if all packages in 'bootstrap-packages' are installed."
  (every #'package-installed-p bootstrap-packages))

(defun install-package (package)
  (unless (package-installed-p package)
    (package-install package)))

(defun install-packages (packages)
  (mapc #'install-package packages))

(defun install-bootstrap-packages ()
  "Install all packages required to bootstrap our setup."
  (unless (bootstrap-packages-installed-p)
    (package-refresh-contents)
    (install-packages bootstrap-packages)))

(install-bootstrap-packages)

(setq use-package-always-ensure t)

(eval-when-compile (require 'use-package))

(use-package company :defer t)
(use-package flycheck :defer t)
(use-package tuareg :defer t)
(use-package merlin :defer t)
(use-package flycheck-ocaml :defer t)
(use-package proof-general :defer t)
(use-package utop :defer t)
(use-package org :defer t)
(use-package exec-path-from-shell :defer nil)
(use-package zenburn-theme :defer t)

(provide 'pkg-init)
