(setq fs-emacs-init-file load-file-name)
(setq fs-emacs-config-dir
      (file-name-directory fs-emacs-init-file))

;; Set up 'custom' system
(setq custom-file (expand-file-name "emacs-customizations.el" fs-emacs-config-dir))
(load custom-file)
