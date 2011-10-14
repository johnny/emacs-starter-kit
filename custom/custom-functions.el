;; show ascii table
;; optained from http://www.chrislott.org/geek/emacs/dotemacs.html
(defun ascii-table ()
  "Print the ascii table. Based on a defun by Alex Schroeder <asc@bsiag.com>"
  (interactive)
  (switch-to-buffer "*ASCII*")
  (erase-buffer)
  (insert (format "ASCII characters up to number %d.\n" 254))
  (let ((i 0))
    (while (< i 254)
      (setq i (+ i 1))
      (insert (format "%4d %c\n" i i))))
  (beginning-of-buffer))

(defun string-replace (this withthat in)
  "replace THIS with WITHTHAT' in the string IN"
  (with-temp-buffer
    (insert in)
    (goto-char (point-min))
    (while (search-forward this nil t)
      (replace-match withthat nil t))
    (buffer-substring (point-min) (point-max))))

(defun underscore-to-space (string)
  "replace _ with space"
  (string-replace "_" " " string)
  )

(defun bookmark-ido-find-file ()
  "Find a bookmark using Ido."
  (interactive)
  (let ((bm (ido-completing-read "Choose bookmark: "
                                 (bookmark-all-names)
                                 nil t)))
    (when bm
      (bookmark-jump bm))))

(provide 'custom-functions)
