(setq fs-emacs-init-file load-file-name)
(setq fs-emacs-config-dir
      (file-name-directory fs-emacs-init-file))
(setq user-emacs-directory fs-emacs-config-dir)
(setq backup-directory-alist
      (list (cons "." (expand-file-name "backup" user-emacs-directory))))
(require 'package)
(add-to-list 'package-archives
	     '("marmalade" .
	       "http://marmalade-repo.org/packages/"))
(package-initialize)

;; Set up 'custom' system
(setq custom-file (expand-file-name "emacs-customizations.el" fs-emacs-config-dir))
(load custom-file)
