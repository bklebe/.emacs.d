(defvar root-dir (file-name-directory load-file-name)
  "The root of the current emacs configuration.")

(defvar lisp-dir (expand-file-name "lisp" root-dir)
  "Location of my custom lisp modules.")

(defvar custom-storage-file (expand-file-name "custom.el" lisp-dir))

(add-to-list 'load-path lisp-dir)
(setq custom-file custom-storage-file)

(if (file-exists-p custom-storage-file)
    (load custom-storage-file))

(require 'pkg-init)
(require 'shell)
(require 'ux)
(require 'editor)
(require 'ocaml)
(require 'org-mode-config)
(require 'backup)
