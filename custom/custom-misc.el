; enable narrow to region command
(put 'narrow-to-region 'disabled nil)

;; make text-mode the default major mode and start auto-fill mode
;; auto-magically
(setq major-mode 'text-mode)

;; automatically chmod u+x
(add-hook 'after-save-hook 'executable-make-buffer-file-executable-if-script-p)

;; setup org-mode
(add-to-list 'auto-mode-alist '("\\.org\\'" . org-mode))
(add-to-list 'auto-mode-alist '("TODO" . org-mode))

;;; Setup smex
(smex-initialize)

;;; Setup auto-complete
(add-to-list 'load-path (concat dotfiles-dir "/custom/plugins/auto-complete"))
(require 'auto-complete)
(add-to-list 'ac-dictionary-directories (concat dotfiles-dir "/custom/plugins/auto-complete/dict"))
(require 'auto-complete-config)
(ac-config-default)

;;; Load snippets
(yas/load-directory (concat dotfiles-dir "/snippets"))

(provide 'custom-misc)

