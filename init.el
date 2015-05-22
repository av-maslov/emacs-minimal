(require 'epa-file)
(epa-file-enable)

;; Turn off beep
(setq visible-bell 1) 
(require 'ido)
(ido-mode t)
(global-hl-line-mode 1)
(global-linum-mode 1)

;; Key bindings
(global-set-key (kbd "C-l") 'goto-line)
(global-set-key [S-up] 'backward-paragraph)      ;; Jump to previous paragraph
(global-set-key [S-down] 'forward-paragraph)     ;; Jump to next paragraph
;; Switch window with Ctrl-TAB 
(global-set-key [C-tab] 'other-window)

(setq path-to-emacsd "C:/MyTemp/_emacs.d/")

(defun get-full-path (subpath)
  (concat path-to-emacsd subpath))

;; Uncomment this to increase font size
;; (set-face-attribute 'default nil :height 110)

;; (add-to-list 'load-path (get-full-path "plugins/"))

;; Color themes
(add-to-list 'custom-theme-load-path (get-full-path "themes") )
(add-to-list 'load-path (get-full-path "themes/"))
(add-to-list 'load-path (get-full-path "themes/emacs-color-theme-solarized/"))
(add-to-list 'custom-theme-load-path (get-full-path "themes/emacs-color-theme-solarized/"))

;;(setq frame-background-mode 'light)
;;(setq frame-background-mode 'dark)
;; (set-frame-parameter nil 'background-mode 'dark)
(load-theme 'solarized t)
(enable-theme 'solarized)

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

(require 'package)
;;--- PACKAGE DIRECTORIES MELPA
(add-to-list 'package-archives
  '("melpa-stable" . "http://stable.melpa.org/packages/") t)
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/") t)
(add-to-list 'package-archives
             '("tromey" . "http://tromey.com/elpa/") t)
(package-initialize)
;;
(when (not package-archive-contents)
  (package-refresh-contents))
