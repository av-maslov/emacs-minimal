;; Auto-complete mode
;; Installed usin package-install
;; http://auto-complete.org/doc/manual.html#installation
;; https://github.com/auto-complete/auto-complete
(add-to-list 'load-path "~/.emacs.d") 
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/ac-dict")
(ac-config-default)
