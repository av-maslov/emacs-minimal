;;(defun timestamp ()
;;   (interactive)
;;   (insert (format-time-string "<%Y-%m-%d>")))
   
;; Insert time stamp
(defun ts ()
   (interactive)
   (insert (format-time-string "%Y-%m-%d")))

;; timer 20 mins
(setq org-timer-default-timer 20)
(defun tmr ()
 (interactive)
 (org-timer-set-timer))

(defun stmr ()
 (interactive)
 (org-timer-stop))
;; ... end timer 20 mins


;; mark position to return
;; ctrl-f7 go back
;; http://www.tonyballantyne.com/EmacsWritingTips.html
(global-set-key (kbd "<f7>") 'org-mark-ring-push)
(global-set-key (kbd "C-<f7>") 'org-mark-ring-goto)

;; Compile file if it is not compiled
(defun compile-if-not-compiled (dir filename)
  (let ((fpath (concat dir filename))
        (fname-without-ext (substring filename 0 -3))
        (fname-compiled (concat (substring filename 0 -3) ".elc"))
        )
  (if (not (file-exists-p (concat dir fname-compiled)))
    (byte-compile-file (concat dir filename))
    (message (concat "File" (concat dir filename) " is compiled" ))
   )
  ))
;;(let ((f (concat "kde" "wwd")))
;;  (insert f))
