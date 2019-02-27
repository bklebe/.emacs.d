(use-package magit :defer t
  :bind ("C-x g" . magit-status))

(use-package magit-popup
  :ensure t
  :demand t)

(use-package projectile :defer t
  :bind (("s-p" . projectile-command-map)
         ("C-c p" . projectile-command-map))
  :config
  (projectile-mode t)
  :delight)

(use-package yasnippet :defer t
  :config
  (yas-global-mode t)
  :delight yas-minor-mode)

(use-package rainbow-delimiters :defer t
  :hook (prog-mode . rainbow-delimiters-mode))

(use-package yasnippet-snippets :defer t)

(use-package parinfer :defer t
  :bind
  (("C-," . parinfer-toggle-mode))
  :init
  (progn
    (setq parinfer-extensions
          '(defaults       ; should be included.
            pretty-parens  ; different paren styles for different modes.
            ; evil           ; If you use Evil.
            ; lispy          ; If you use Lispy. With this extension, you should install Lispy and do not enable lispy-mode directly.
            ; paredit        ; Introduce some paredit commands.
            smart-tab      ; C-b & C-f jump positions and smart shift with tab & S-tab.
            smart-yank))   ; Yank behavior depend on mode.
    (add-hook 'clojure-mode-hook #'parinfer-mode)
    (add-hook 'emacs-lisp-mode-hook #'parinfer-mode)
    (add-hook 'common-lisp-mode-hook #'parinfer-mode)
    (add-hook 'scheme-mode-hook #'parinfer-mode)
    (add-hook 'lisp-mode-hook #'parinfer-mode))
  :delight parinfer-mode)

(use-package smartparens :defer t
  :config
  (require 'smartparens-config)
  (smartparens-global-strict-mode t))

(require 'ocaml)
(require 'dotnet)
(require 'proof-general-config)

(provide 'development)
