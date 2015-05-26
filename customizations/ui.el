;; User interface

;; Uncomment this to increase font size
(set-face-attribute 'default nil :height 130)

;; Calendar localization
;; http://www.emacswiki.org/emacs/CalendarLocalization
(add-hook 'calendar-load-hook
	  (lambda ()
	    (calendar-set-date-style 'european)))
