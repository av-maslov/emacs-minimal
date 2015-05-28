;; User interface

;; Highlight selection
(transient-mark-mode t)

;; Uncomment this to increase font size
(set-face-attribute 'default nil :height 125)

;; Calendar localization
;; http://www.emacswiki.org/emacs/CalendarLocalization
(add-hook 'calendar-load-hook
	  (lambda ()
	    (calendar-set-date-style 'european)))
