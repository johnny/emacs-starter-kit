(setq TeX-auto-save t)
(setq TeX-save-query nil)
(setq TeX-parse-self t)
(setq TeX-PDF-mode t)

(setq-default TeX-master nil)

 (add-hook 'LaTeX-mode-hook (lambda ()
                                  (reftex-mode 1)
                                  (TeX-fold-mode 1)))

(add-to-list 'load-path (concat dotfiles-dir "/custom/plugins/whizzytex"))
(autoload 'whizzytex-mode "whizzytex"
  "WhizzyTeX, a minor-mode WYSIWIG environment for LaTeX" t)
(setq whizzy-command-name (concat dotfiles-dir "/custom/plugins/whizzytex/whizzytex"))
(setq whizzy-point-visible nil)
(setq whizzy-overlays nil)

;;nomenclature for latex
(eval-after-load "tex"
  '(add-to-list 'TeX-command-list 
                '("Nomenclature" "makeindex %s.nlo -s nomencl.ist -o %s.nls"
                  (lambda (name command file)
                    (TeX-run-compile name command file)
                    (TeX-process-set-variable file 'TeX-command-next TeX-command-default))
                  nil t :help "Create nomenclature file")))

(provide 'custom-tex)
