;; Customizations

(add-to-list 'load-path (concat dotfiles-dir "/custom"))
(add-to-list 'load-path (concat dotfiles-dir "/custom/plugins"))

(server-start)

(require 'custom-elpa)
(require 'custom-misc)
(require 'custom-ruby)
(require 'custom-js)
(require 'custom-tex)
(require 'custom-bindings)
(require 'custom-ui)
(require 'custom-functions)
(require 'custom-yasnippet)
(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(safe-local-variable-values (quote ((require-final-newline) (whitespace-line-column . 80) (lexical-binding . t)))))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )
