(defun dmd/recompile-config ()
  (interactive)
  (byte-recompile-directory dotfiles-dir 0))

(provide 'config-defuns)

