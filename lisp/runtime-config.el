;;; always prefer fresh bytecode
(setq load-prefer-newer t)

;;; Reduce the frequency of garbage collection by making it happen on
;;; each 50MB of allocated data (the default is on every 0.76MB).
(setq gc-cons-threshold 50000000)

(provide 'runtime-config)
