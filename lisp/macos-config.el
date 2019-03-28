;;; macos-config.el --- OS-specific settings for macOS -*- lexical-binding: t; -*-

;;; Commentary:

;;; Code:

(use-package exec-path-from-shell
    :if (eq system-type 'darwin)
    :demand t
    :config
    (exec-path-from-shell-initialize))

(setq insert-directory-program "/usr/local/bin/gls")


;; There's no point in hiding the menu bar on macOS, so let's not do it
(menu-bar-mode +1)

;; Enable emoji, and stop the UI from freezing when trying to display them.
(when (fboundp 'set-fontset-font)
  (set-fontset-font t 'unicode "Apple Color Emoji" nil 'prepend))

(add-to-list 'default-frame-alist '(font . "Operator Mono SSm-14"))

(provide 'macos-config)
;;; macos-config.el ends here
