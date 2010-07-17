;; install custom elpa packages

(defvar custom-packages (list 'haml-mode
                              'sass-mode
                              'lua-mode
                              'yasnippet-bundle
                              'smex)
  "Libraries that should be installed.")

(defun custom-elpa-install ()
  "Install all custom packages that aren't installed."
  (interactive)
  (dolist (package custom-packages)
    (unless (or (member package package-activated-list)
                (functionp package))
      (message "Installing %s" (symbol-name package))
      (package-install package))))

(when (esk-online?)
  (unless package-archive-contents (package-refresh-contents))
  (custom-elpa-install))

(provide 'custom-elpa)
