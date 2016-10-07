;; Color themes
(add-to-list 'custom-theme-load-path (get-full-path "themes") )
(add-to-list 'load-path (get-full-path "themes/"))
(add-to-list 'load-path (get-full-path "themes/emacs-color-theme-solarized/"))
(add-to-list 'custom-theme-load-path (get-full-path "themes/emacs-color-theme-solarized/"))
(add-to-list 'custom-theme-load-path (get-full-path "themes/monokai-emacs/"))

;; (add-to-list 'load-path (get-full-path "themes/spacemacs-theme/"))
(add-to-list 'custom-theme-load-path (get-full-path "themes/spacemacs-theme/"))
(load (get-full-path "themes/spacemacs-theme/spacemacs-common.el"))

(defun monokai ()
  (interactive)
  (load-theme 'monokai t)
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

(defun spc-dark ()
  (interactive)
  (load-theme 'spacemacs-dark t)
  (enable-theme 'spacemacs-dark))

(defun spc-light ()
  (interactive)
  (load-theme 'spacemacs-light t)
  (enable-theme 'spacemacs-light))

;;;; (setq frame-background-mode 'light)
;;;; (setq frame-background-mode 'dark)
;;;; (set-frame-parameter nil 'background-mode 'dark)
(load-theme 'solarized t)
(load-theme 'spacemacs-dark t)