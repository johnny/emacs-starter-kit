(add-to-list 'load-path "/home/jonas/.node_libraries/.npm/jshint-mode/0.0.2/package")
(require 'flymake-jshint)
(add-hook 'espresso-mode-hook
    (lambda () (flymake-mode t)))

;; load mozrepl mode
(autoload 'moz-minor-mode "moz" "Mozilla Minor and Inferior Mozilla Modes" t)

(add-hook 'espresso-mode-hook 'espresso-custom-setup)
(defun espresso-custom-setup ()
  (moz-minor-mode 1))

(provide 'custom-js)
