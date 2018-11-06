(when (memq window-system '(mac ns x))
  (exec-path-from-shell-initialize))

(add-to-list 'default-frame-alist '(font . "Operator Mono SSm-14"))

(load-theme 'zenburn t)

(when (fboundp 'tool-bar-mode)
  (tool-bar-mode -1))
(menu-bar-mode +1)
(blink-cursor-mode -1)

(setq ring-bell-function 'ignore)
(setq inhibit-startup-screen t)

;; Enable emoji, and stop the UI from freezing when trying to display them.
(when (fboundp 'set-fontset-font)
  (set-fontset-font t 'unicode "Apple Color Emoji" nil 'prepend))

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
(setq multi-term-program-switches "--login")
(setq scroll-preserve-screen-position 1)
(setq scroll-conservatively 10000)

;; turn on highlighting current line
(global-hl-line-mode 1)

(provide 'ux)
