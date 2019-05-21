;;; development.el --- Software development config -*- lexical-binding: t; -*-

;;; Commentary:

;;; Code:

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

(use-package parinfer
  :hook ((dune-mode emacs-lisp-mode lisp-mode) . parinfer-mode)
  :bind
  (("C-," . parinfer-toggle-mode))
  :init
  (progn
    (setq parinfer-extensions
          '(defaults         ; should be included.
            pretty-parens    ; different paren styles for different modes.
            ; paredit        ; Introduce some paredit commands.
            smart-tab        ; C-b & C-f jump positions and smart shift with tab & S-tab.
            smart-yank))))   ; Yank behavior depend on mode.

(use-package eglot
  :hook (rust-mode . eglot-ensure))

(require 'ocaml)
(require 'dotnet)
(require 'proof-general-config)
(require 'rust)
(require 'python-tools)

(provide 'development)
;;; development.el ends here
