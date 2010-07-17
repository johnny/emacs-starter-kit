(setq TeX-auto-save t)
(setq TeX-save-query nil)
(setq TeX-parse-self t)
(setq TeX-PDF-mode t)

(setq-default TeX-master nil)

 (add-hook 'LaTeX-mode-hook (lambda ()
                                  (reftex-mode 1)
                                  (TeX-fold-mode 1)))

(provide 'custom-tex)
