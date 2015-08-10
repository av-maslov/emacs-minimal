(defun timestamp ()
   (interactive)
   (insert (format-time-string "<%Y-%m-%d>")))

(setq org-timer-default-timer 20)
;; org-timer-set timer - run timer
(add-hook 'org-clock-in-hook (lambda ()
   (if (not org-timer-current-timer) 
	  (org-timer-set-timer '(16)))))
	 
	 
;; mark position to return
;; ctrl-f7 go back
;; http://www.tonyballantyne.com/EmacsWritingTips.html
(global-set-key (kbd "<f7>") 'org-mark-ring-push)
(global-set-key (kbd "C-<f7>") 'org-mark-ring-goto)

