; enable narrow to region command
(put 'narrow-to-region 'disabled nil)

;; make text-mode the default major mode and start auto-fill mode
;; auto-magically
(setq major-mode 'text-mode)
(remove-hook 'text-mode-hook 'turn-on-auto-fill)

(add-hook 'text-mode-hook (lambda ()
                            (set (make-local-variable 'require-final-newline) nil)
                            ))


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

(require 'autopair)
(autopair-global-mode) ;; enable autopair in all buffers

(require 'gpicker)
(setq *gpicker-hook-ido* nil)

;;; Load snippets
(yas/load-directory (concat dotfiles-dir "/snippets"))

(setq yas/trigger-key "SPC")

(provide 'custom-misc)

