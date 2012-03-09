;; Collection of useful shortcuts
(global-set-key "\C-c#"  'comment-or-uncomment-region)
(global-set-key (kbd "M-l") 'goto-line)

(global-set-key (kbd "s-;") 'windmove-left)          ; move to left windnow
(global-set-key (kbd "s-\\") 'windmove-right)        ; move to right window
(global-set-key (kbd "s-[") 'windmove-up)              ; move to upper window
(global-set-key (kbd "s-'") 'windmove-down)          ; move to downer window

(defun comment-dwim-line (&optional arg)
  "Replacement for the comment-dwim command.
        If no region is selected and current line is not blank and we are not at the end of the line,
        then comment current line.
        Replaces default behaviour of comment-dwim, when it inserts comment at the end of the line."
  (interactive "*P")
  (comment-normalize-vars)
  (if (and (not (region-active-p)) (not (looking-at "[ \t]*$")))
      (comment-or-uncomment-region (line-beginning-position) (line-end-position))
    (comment-dwim arg)))

(global-set-key "\M-;" 'comment-dwim-line)

;; org-mode
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)

;;; Smex
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
;; This is your old M-x.
;(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)

(global-set-key (kbd "RET") 'newline-and-indent)
(add-hook 'sass-mode-hook '(lambda ()
                             (local-set-key (kbd "RET") 'newline)))

;; Indent pasted code
(dolist (command '(yank yank-pop))
  (eval `(defadvice ,command (after indent-region activate)
           (and (not current-prefix-arg)
                (member major-mode '(emacs-lisp-mode lisp-mode       espresso-mode
                                                     clojure-mode    scheme-mode
                                                     haskell-mode    ruby-mode
                                                     rspec-mode      python-mode
                                                     c-mode          c++-mode
                                                     objc-mode       latex-mode
                                                     plain-tex-mode))
                (let ((mark-even-if-inactive transient-mark-mode))
                  (indent-region (region-beginning) (region-end) nil))))))

(global-set-key (kbd "C-c f") 'gpicker-find-file)
(global-set-key (kbd "C-c C-f") 'gpicker-visit-project)
(global-set-key (kbd "C-c b") 'bookmark-ido-find-file)

(provide 'custom-bindings)
