(setq path-to-emacsd "~/.emacs.d/")
(defun get-full-path (subpath)
  (concat path-to-emacsd subpath))

;; (add-to-list 'load-path path-to-emacsd)
(add-to-list 'load-path (get-full-path "customizations/"))
(add-to-list 'load-path (get-full-path "customizations/packages/"))
(add-to-list 'load-path (get-full-path "plugins/"))
(add-to-list 'load-path (get-full-path "plugins/smex/"))
(add-to-list 'load-path (get-full-path "plugins/aceJump/"))
(add-to-list 'load-path (get-full-path "plugins/highlight-symbol/"))

(load "colors.el")
(load "ui.el")
(load "navigation.el")

;; Packages settings
(load "smex.el")
(load "acejump.el")
(load "highlight-symbol.el")
(require 'sr-speedbar) ;; sr-speedbar-open/close
;; Load following files if these packages have already been installed using package manager
;; M-x package-list-packages
;; (load "autocomplete.el")
;; (load "magit.el")

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



