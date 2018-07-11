;; Color themes
(add-to-list 'custom-theme-load-path (get-full-path "themes") )
(add-to-list 'load-path (get-full-path "themes/"))
(add-to-list 'load-path (get-full-path "themes/emacs-color-theme-solarized/"))
(add-to-list 'custom-theme-load-path (get-full-path "themes/emacs-color-theme-solarized/"))
(add-to-list 'custom-theme-load-path (get-full-path "themes/monokai-emacs/"))

;;; Start emacs for clojure themes
(add-to-list 'load-path (get-full-path "themes/emacs-for-clojure/"))
(add-to-list 'custom-theme-load-path (get-full-path "themes/emacs-for-clojure/"))
;;(load-theme 'tomorrow-night)
;;(load-theme 'tomorrow-night-bright)
;;(load-theme 'tomorrow-night-blue)
;;(load-theme 'tomorrow-night-eighties)
;;(load-theme 'zenburn)
;; (require 'sunburn)
;;(load-theme 'sunburn)
(defun dark-clojure ()
  (interactive)
  (load-theme 'tomorrow-night-eighties)
  (enable-theme 'tomorrow-night-eighties))
;;;End Start emacs for clojure themes


(defun light ()
  (interactive)
  (load-theme 'solarized)
  (set-frame-parameter nil 'background-mode 'light)
  (setq frame-background-mode 'light)
  (enable-theme 'solarized))

(defun dark ()
  (interactive)
  (load-theme 'solarized)
  (set-frame-parameter nil 'background-mode 'dark)
  (setq frame-background-mode 'dark)
  (enable-theme 'solarized))

;;;; Start 2017.04.16
(add-to-list 'custom-theme-load-path (get-full-path "themes/dark-mint-theme/"))
(add-to-list 'custom-theme-load-path (get-full-path "themes/spolsky-theme/"))
(add-to-list 'custom-theme-load-path (get-full-path "themes/dracula-theme/"))

(defun dracula ()
  (interactive)
  (load-theme 'dracula))

(defun spolsky ()
  (interactive)
  (load-theme 'spolsky))

(defun dark-mint ()
  (interactive)
  (load-theme 'dark-mint))
;;;; End 2017.04.16

;; (add-to-list 'load-path (get-full-path "themes/spacemacs-theme/"))
(add-to-list 'custom-theme-load-path (get-full-path "themes/spacemacs-theme/"))
(load (get-full-path "themes/spacemacs-theme/spacemacs-common.el"))

(defun monokai ()
  (interactive)
  (load-theme 'monokai t)
  (enable-theme 'monokai))

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
;;(load-theme 'solarized t)
;;(load-theme 'spacemacs-dark t)

(dark-clojure)

;;;;;; Set line number color
;;;;;; https://stackoverflow.com/questions/21971940/how-to-set-color-for-linum-in-emacs
;;(set-face-foreground 'linum "magenta")
(set-face-foreground 'linum "darkgrey")
