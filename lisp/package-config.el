;;; package-config.el --- Sets up packaging infrastructure

;;; Commentary:

;;; Code:

;; Cribs liberally from bbatsov/prelude/core/prelude-packages.el
(require 'cl)
(require 'package)

(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)

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

(eval-when-compile (require 'use-package))

(setq use-package-always-ensure t)
(setq use-package-always-defer t)

(use-package delight
  :config
  :delight)

(use-package auto-package-update
  :config
  (setq auto-package-update-delete-old-versions t)
  (setq auto-package-update-hide-results t)
  (auto-package-update-maybe))

(provide 'package-config)
;;; package-config.el ends here
