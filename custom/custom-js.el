(add-to-list 'load-path "~/.node_libraries/.npm/jshint-mode/0.0.2/package")
(require 'flymake-jshint)
(add-hook 'espresso-mode-hook
    (lambda () (flymake-mode t)))

;; load mozrepl mode
(autoload 'moz-minor-mode "moz" "Mozilla Minor and Inferior Mozilla Modes" t)

(add-hook 'espresso-mode-hook 'espresso-custom-setup)
(defun espresso-custom-setup ()
  (moz-minor-mode 1))

(add-to-list 'load-path "~/.emacs.d/custom/plugins/coffee-mode")
(require 'coffee-mode)
(add-to-list 'auto-mode-alist '("\\.coffee$" . coffee-mode))
(add-to-list 'auto-mode-alist '("Cakefile" . coffee-mode))

(defun coffee-custom ()
  "coffee-mode-hook"

  ;; CoffeeScript uses two spaces.
  (make-local-variable 'tab-width)
  (set 'tab-width 2))

(add-hook 'coffee-mode-hook 'coffee-custom)

(require 'handlebars-mode)

(provide 'custom-js)
