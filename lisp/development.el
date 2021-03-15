;;; development.el --- Software development config -*- lexical-binding: t; -*-

;;; Commentary:

;;; Code:

(use-package company
  :hook (prog-mode . company-mode)
  :config
  (setq company-idle-delay 0)
  (setq company-dabbrev-downcase nil))

(use-package magit
  :bind ("C-x g" . magit-status))

(use-package forge :demand t
  :after magit)

(use-package projectile
  :bind (("s-p" . projectile-command-map)
         ("C-c p" . projectile-command-map))
  :config
  (projectile-mode t))

(use-package csv-mode)

(use-package yasnippet
  :hook (prog-mode . yas-minor-mode)
  :config
  (yas-reload-all))

(use-package rainbow-delimiters
  :hook (prog-mode . rainbow-delimiters-mode))

(use-package yasnippet-snippets)

(use-package eglot
  :hook (rust-mode . eglot-ensure))

(require 'ocaml)
(require 'dotnet)
(require 'proof-general-config)
(require 'rust)
(require 'python-tools)

(provide 'development)
;;; development.el ends here
