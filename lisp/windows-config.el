;;; Windows specific settings
(when (eq system-type 'windows-nt)
  (add-to-list 'default-frame-alist '(font . "OPERATORMONOSSM-BOOK-12"))
  (setq default-directory "~/"))

(provide 'windows-config)
