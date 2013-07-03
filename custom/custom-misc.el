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
(require 'auto-complete-config)
;; (add-to-list 'ac-dictionary-directories (concat dotfiles-dir "/custom/plugins/auto-complete/dict"))
(ac-config-default)

;; (require 'ac-math)

;; (add-to-list 'ac-modes 'latex-mode)   ; make auto-complete aware of {{{latex-mode}}}

;; (defun ac-latex-mode-setup ()         ; add ac-sources to default ac-sources
;;   (setq ac-sources
;;      (append '(ac-source-math-unicode ac-source-math-latex ac-source-latex-commands)
;;                ac-sources))
;; )

;; (add-hook 'LaTeX-mode-hook 'ac-latex-mode-setup)
;; (ac-flyspell-workaround)

(require 'autopair)
(autopair-global-mode) ;; enable autopair in all buffers

(require 'gpicker)
(setq *gpicker-hook-ido* nil)

(provide 'custom-misc)

