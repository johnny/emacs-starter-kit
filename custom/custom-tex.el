(setq TeX-auto-save t)
(setq TeX-save-query nil)
(setq TeX-parse-self t)
(setq TeX-PDF-mode t)

(setq-default TeX-master nil)

 (add-hook 'LaTeX-mode-hook (lambda ()
                                  (reftex-mode 1)
                                  (TeX-fold-mode 1)))
(load "auctex.el" nil t t)
(load "preview-latex.el" nil t t)

(add-to-list 'load-path (concat dotfiles-dir "/custom/plugins/whizzytex"))
(autoload 'whizzytex-mode "whizzytex"
  "WhizzyTeX, a minor-mode WYSIWIG environment for LaTeX" t)
(setq whizzy-command-name (concat dotfiles-dir "/custom/plugins/whizzytex/whizzytex"))
(setq whizzy-point-visible nil)
(setq whizzy-overlays nil)

(provide 'custom-tex)
