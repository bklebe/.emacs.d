(use-package magit :defer t
  :bind ("C-x g" . magit-status))

(use-package projectile :defer t
  :bind (("s-p" . projectile-command-map)
         ("C-c p" . projectile-command-map))
  :config
  (projectile-mode +1)
  :delight)

(use-package yasnippet :defer t
  :config
  (yas-global-mode 1)
  :delight)

(use-package yasnippet-snippets :defer t)

(require 'ocaml)
(require 'dotnet)
(require 'proof-general-config)

(provide 'development)
