    
(defsubst ruby-in-string/comment ()
  "Return non-nil if point is in a Python literal (a comment or string)."
  ;; We don't need to save the match data.
  (nth 8 (syntax-ppss)))

(defun line-blank-before-point?()
  "thisandthat."
  (interactive)
  (save-excursion
    (looking-back "^\\s-*\\w+" (line-beginning-position))
    )
  )

(provide 'custom-yasnippet-helpers)
