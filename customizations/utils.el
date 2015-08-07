(defun timestamp ()
   (interactive)
   (insert (format-time-string "<%Y-%m-%d>")))

(setq org-timer-default-timer 20)
;; org-timer-set timer - run timer
