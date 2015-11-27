;;(defun timestamp ()
;;   (interactive)
;;   (insert (format-time-string "<%Y-%m-%d>")))
   
;; Insert time stamp
(defun ts ()
   (interactive)
   (insert (format-time-string "%Y-%m-%d")))

;; Insert focus item 
(defun it ()
  (interactive)
  (insert(concat "* " (format-time-string "%Y-%m-%d")))
  (insert
"

| LA     | [ ]             |
| ML     | [ ] [ ] [ ]     |
| Thesis | [ ] [ ] [ ] [ ] |

"))

;; mark position to return
;; ctrl-f7 go back
;; http://www.tonyballantyne.com/EmacsWritingTips.html
(global-set-key (kbd "<f7>") 'org-mark-ring-push)
(global-set-key (kbd "C-<f7>") 'org-mark-ring-goto)

