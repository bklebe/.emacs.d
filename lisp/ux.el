(use-package zenburn-theme
  :config
  (load-theme 'zenburn t))

(when (fboundp 'tool-bar-mode)
  (tool-bar-mode -1))
(menu-bar-mode -1)
(blink-cursor-mode -1)

(setq ring-bell-function 'ignore)
(setq inhibit-startup-screen t)

;; nice scrolling
(setq scroll-margin 0
      scroll-conservatively 100000
      scroll-preserve-screen-position 1)

;; more useful frame title, that show either a file or a
;; buffer name (if the buffer isn't visiting a file)
(setq frame-title-format
      '(:eval (if (buffer-file-name)
                  (abbreviate-file-name (buffer-file-name))
                "%b")))

(line-number-mode t)
(column-number-mode t)
(size-indication-mode t)
(toggle-frame-maximized)

;; turn on highlighting current line
(global-hl-line-mode 1)

(provide 'ux)
