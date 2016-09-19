;; Color themes
(add-to-list 'custom-theme-load-path (get-full-path "themes") )
(add-to-list 'load-path (get-full-path "themes/"))
(add-to-list 'load-path (get-full-path "themes/emacs-color-theme-solarized/"))
(add-to-list 'custom-theme-load-path (get-full-path "themes/emacs-color-theme-solarized/"))

(add-to-list 'custom-theme-load-path (get-full-path "themes/monokai-emacs/"))
(load-theme 'monokai t)

;;(setq frame-background-mode 'light)
;;(setq frame-background-mode 'dark)
;; (set-frame-parameter nil 'background-mode 'dark)
(load-theme 'solarized t)
(enable-theme 'solarized)

(defun monokai ()
  (interactive)
  (enable-theme 'monokai))

(defun light ()
  (interactive)
  (set-frame-parameter nil 'background-mode 'light)
  (setq frame-background-mode 'light)
  (enable-theme 'solarized))

(defun dark ()
  (interactive)
  (set-frame-parameter nil 'background-mode 'dark)
  (setq frame-background-mode 'dark)
  (enable-theme 'solarized))
