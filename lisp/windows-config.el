;;; Windows specific settings
(when (eq system-type 'windows-nt)
  (add-to-list 'default-frame-alist '(font . "OPERATORMONOSSM-BOOK-12")))

(provide 'windows-config)
