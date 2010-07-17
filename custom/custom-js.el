(add-to-list 'load-path (concat dotfiles-dir "/custom/plugins/flymake-jslint"))

;; (setq flymake-log-level 3)
(require 'flymake-jslint)
(add-hook 'espresso-mode-hook
          (lambda () (flymake-mode t)))

;; load mozrepl mode
(autoload 'moz-minor-mode "moz" "Mozilla Minor and Inferior Mozilla Modes" t)

(add-hook 'espresso-mode-hook 'espresso-custom-setup)
(defun espresso-custom-setup ()
  (moz-minor-mode 1))

(provide 'custom-js)
