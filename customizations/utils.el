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

;; timer 20 mins
(setq org-timer-default-timer 20)
(defun tm
 (interactive)
 (org-timer-set-timer))
;; ... end timer 20 mins


;; mark position to return
;; ctrl-f7 go back
;; http://www.tonyballantyne.com/EmacsWritingTips.html
(global-set-key (kbd "<f7>") 'org-mark-ring-push)
(global-set-key (kbd "C-<f7>") 'org-mark-ring-goto)

