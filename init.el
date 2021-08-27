;;; -*- lexical-binding: t; -*-

(defvar file-name-handler-alist-handle file-name-handler-alist)
(setq gc-cons-threshold most-positive-fixnum ; 2^61 bytes
      gc-cons-percentage 0.6
      file-name-handler-alist nil)
(add-hook 'emacs-startup-hook
          (lambda ()
            (setq gc-cons-threshold 16777216 ; 16mb
                  gc-cons-percentage 0.1
                  file-name-handler-alist file-name-handler-alist-handle)))

(org-babel-load-file "~/.emacs.d/README.org" t)
