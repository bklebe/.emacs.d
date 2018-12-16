;;; ui.el --- UI configuration
;;; Commentary:
;;; As in many other places in this config, a good portion from this is
;;; from bbatsov/prelude.

;;; Code:
;;; Nice syntax theme
(use-package zenburn-theme
  :config
  (load-theme 'zenburn t))

;;; Show line and column numbers
(line-number-mode t)
(column-number-mode t)
(size-indication-mode t)
(when (version<= "26.0.50" emacs-version)
  (global-display-line-numbers-mode))

;;; Turn off toolbar
(when (fboundp 'tool-bar-mode)
  (tool-bar-mode -1))

;;; Turn off menubar (note: gets reverted if on macOS)
(menu-bar-mode -1)

;;; Don't blink the cursor
(blink-cursor-mode -1)

;;; Turns off annoying alarm
(setq ring-bell-function 'ignore)
(setq inhibit-startup-screen t)

;;; Warn when opening files bigger than 100MB
(setq large-file-warning-threshold 100000000)

;; Nice scrolling
(setq scroll-margin 0
      scroll-conservatively 100000
      scroll-preserve-screen-position 1)

;;; More useful frame title, that shows either a file or a
;;; buffer name (if the buffer isn't visiting a file).
(setq frame-title-format
      '(:eval (if (buffer-file-name)
                  (abbreviate-file-name (buffer-file-name))
                "%b")))

;;; Highlight current line
(global-hl-line-mode 1)

;;; Maximize Emacs at startup
(toggle-frame-maximized)

(provide 'ui)
;;; ui.el ends here
