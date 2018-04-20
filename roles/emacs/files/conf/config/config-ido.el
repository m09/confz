(require 'ido)

;; enable ido-mode
(ido-mode t)
(setq ido-enable-flex-matching t
      ido-everywhere t
      ido-create-new-buffer 'always
      ido-use-filename-at-point 'guess
      ido-max-prospects 10
      ido-default-file-method 'selected-window
      ido-default-buffer-method 'selected-window)

(provide 'config-ido)
