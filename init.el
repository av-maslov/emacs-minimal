;; (setq path-to-emacsd "~/.emacs.d/")
(setq path-to-emacsd "C:/MyTemp/_emacs.d/")
(defun get-full-path (subpath)
  (concat path-to-emacsd subpath))
  
;; https://www.gnu.org/software/emacs/manual/html_node/emacs/Saving-Emacs-Sessions.html
;; (desktop-save-mode 0)

;;; After symon is installed
;; (require 'symon)
;;; after auto-complete is installed
;;; http://auto-complete.org/doc/manual.html#after-installation-check
;; (require 'auto-complete-config)
;; (ac-config-default)

;; Vim mode
(require 'evil)
(evil-mode 1)

(require 'whitespace)

;; http://ergoemacs.org/emacs/emacs_insert_brackets_by_pair.html 
;; auto close bracket insertion. New in emacs 24
(electric-pair-mode 1)

;; Use spaces instead of tabs when indenting
(setq-default indent-tabs-mode nil)

;; (add-to-list 'load-path path-to-emacsd)
(add-to-list 'load-path (get-full-path "customizations/"))
(add-to-list 'load-path (get-full-path "customizations/packages/"))
(add-to-list 'load-path (get-full-path "plugins/"))
(add-to-list 'load-path (get-full-path "plugins/smex/"))
(add-to-list 'load-path (get-full-path "plugins/aceJump/"))
(add-to-list 'load-path (get-full-path "plugins/highlight-symbol/"))
(add-to-list 'load-path (get-full-path "plugins/yasnippet/"))

(load "colors.el")
(load "ui.el")
(load "navigation.el")
(load "deftplugin.el")
(load "fireplace.el")

;; yasnippet
(require 'yasnippet)
(yas-global-mode 1)
;; end yasnippt - separate file doesn't work

;; Packages settings
(load "smex.el")
(load "acejump.el")
(load "highlight-symbol.el")
(require 'sr-speedbar) ;; sr-speedbar-open/close
;; Load following files if these packages have already been installed using package manager
;; M-x package-list-packages
;; (load "autocomplete.el") ;; smth. is wrong with this initiialization, it doesn't enable auto-complete for julia files, but it works if i just run M-x auto-coplete-mode while julia file is opened
;; (load "magit.el")
;; (load "scalamode.el")
;; (load "emacsess.el")

(require 'epa-file)
(epa-file-enable)

;;--- PACKAGE DIRECTORIES MELPA
(require 'package)

(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/") t)

(add-to-list 'package-archives
	     '("melpa-stable" . "http://stable.melpa.org/packages/") t)

(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/") t)

(add-to-list 'package-archives
             '("tromey" . "http://tromey.com/elpa/") t)

(package-initialize)

(when (not package-archive-contents)
  (package-refresh-contents))



