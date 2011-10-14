;;; additional ruby file types
(add-to-list 'auto-mode-alist '("\\.thor$" . ruby-mode))

(add-hook 'ruby-mode-hook
          '(lambda ()
             (setq yas/buffer-local-condition
                   '(if (ruby-in-string/comment)
                        '(require-snippet-condition . force-in-comment)
                      t))))
;; fonts
(font-lock-add-keywords
 'ruby-mode
 '(("\\<\\(attr_accessor\\|attr_reader\\|attr_writer\\|extend\\|include\\|require\\)\\>" 1 font-lock-keyword-face))
 '(("\\<\\(FIXME\\|TODO\\|OPTIMIZE\\):" 1 font-lock-warning-face)))


;;mode-compile
(autoload 'mode-compile "mode-compile"
  "Command to compile current buffer file based on the major mode" t)
(global-set-key "\C-cc" 'mode-compile)
(autoload 'mode-compile-kill "mode-compile"
  "Command to kill a compilation launched by `mode-compile'" t)
(global-set-key "\C-ck" 'mode-compile-kill)

(require 'rspec-mode)
(require 'rainbow-mode)

(eval-after-load 'sass-mode
  '(add-hook 'sass-mode-hook
             (lambda ()
               (rainbow-mode)
               )))

;;; rinari
(add-to-list 'load-path (concat dotfiles-dir "/custom/plugins/rinari") )
(require 'rinari-merb)

(provide 'custom-ruby)


;; anything-rcodetools
;(add-to-list 'load-path "~/emacs/plugins/rcodetools")
;(require 'rcodetools)
;(require 'icicles-rcodetools)
;(require 'anything)
;(require 'anything-rcodetools)
;;       ;; Command to get all RI entries.
;(setq rct-get-all-methods-command "PAGER=cat fri -l -L")
;;       (setq rct-get-all-methods-command "PAGER=cat fri -l")
;(setq rct-get-all-methods-command "PAGER=cat ri -l")
;;       ;; See docs
;; (define-key ruby-mode-map "\M-\C-i" 'rct-complete-symbol)
;(rct-get-all-methods)
