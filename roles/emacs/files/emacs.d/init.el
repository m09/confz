
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(require 'cl)

(require 'package)
(let* ((no-ssl (and (memq system-type '(windows-nt ms-dos))
                    (not (gnutls-available-p))))
       (proto (if no-ssl "http" "https")))
  (add-to-list 'package-archives (cons "melpa-stable" (concat proto "://stable.melpa.org/packages/")) t)
  (when (< emacs-major-version 24)
    (add-to-list 'package-archives '("gnu" . (concat proto "://elpa.gnu.org/packages/")))))

;; load-path enhancement, from daimrod's conf
(defun fni/add-to-load-path (this-directory &optional with-subdirs recursive)
  "Add THIS-DIRECTORY at the beginning of the load-path, if it exists.
Add all its subdirectories not starting with a '.' if the
optional argument WITH-SUBDIRS is not nil.
Do it recursively if the third argument is not nil."
  (when (and this-directory
             (file-directory-p this-directory))
    (let* ((this-directory (expand-file-name this-directory))
           (files (directory-files this-directory t "^[^\\.]")))

      ;; completely canonicalize the directory name (*may not* begin with `~')
      (while (not (string= this-directory (expand-file-name this-directory)))
             (setq this-directory (expand-file-name this-directory)))

      (message "Adding `%s' to load-path..." this-directory)
      (add-to-list 'load-path this-directory)

      (when with-subdirs
        (while files
               (let ((dir-or-file (car files)))
                 (when (file-directory-p dir-or-file)
                   (if recursive
                       (fni/add-to-load-path dir-or-file 'with-subdirs 'recursive)
                       (fni/add-to-load-path dir-or-file))))
               (setq files (cdr files)))))))

(defvar dotfiles-dir (file-name-directory
                    (or (buffer-file-name) load-file-name))
  ".emacs.d location.")
(defvar config-dir (concat dotfiles-dir "config/"))
(defvar elpa-dir (concat dotfiles-dir "elpa/"))
(defvar elisp-dir (concat dotfiles-dir "elisp/"))

(fni/add-to-load-path config-dir t)
(fni/add-to-load-path elpa-dir t)
(fni/add-to-load-path elisp-dir t)

;; Load my configuration
(defvar dmd/modules
  (loop for config-file in (directory-files config-dir nil "^config-.*.el$")
        collect (subseq config-file 0 (- (length config-file) 3)))
  "List of available configuration modules.")

(mapc (lambda (module)
        (message "Loading %s" module)
        (unless (ignore-errors (require (intern module)))
          (message "Error: Failed to load %s" module)))
      dmd/modules)

(setq gnutls-algorithm-priority "NORMAL:-VERS-TLS1.3") 
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages (quote (magit markdown-mode multiple-cursors undo-tree))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
