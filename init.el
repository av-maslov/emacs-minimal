
;; Ocaml; git clone https://github.com/ocaml/tuareg
;;(add-to-list 'load-path "D:/../tuareg/")
;;(load "D:/../tuareg/tuareg.el")


;; (setq path-to-emacsd "~/.emacs.d/")
(setq path-to-emacsd "C:/MyTemp/_emacs.d/")
(defun get-full-path (subpath)
  (concat path-to-emacsd subpath))
;;; After symon is installed
;; (require 'symon)
;; (add-to-list 'load-path path-to-emacsd)
(add-to-list 'load-path (get-full-path "customizations/"))
(add-to-list 'load-path (get-full-path "customizations/packages/"))
(add-to-list 'load-path (get-full-path "plugins/"))
(add-to-list 'load-path (get-full-path "plugins/smex/"))
(add-to-list 'load-path (get-full-path "plugins/aceJump/"))
(add-to-list 'load-path (get-full-path "plugins/highlight-symbol/"))
(add-to-list 'load-path (get-full-path "plugins/yasnippet/"))
;;... Settings
(load "settings.el")
(load "colors.el")
(load "focus.el")
(load "ui.el")
(load "navigation.el")
;;... Packages settings
(load "smex.el")
(load "acejump.el")
(load "highlight-symbol.el")
(require 'sr-speedbar) ;; sr-speedbar-open/close
;; Load following files if these packages have already been installed using package manager
;; M-x package-list-packages
;; (load "magit.el")
;; (load "scalamode.el")
;; (load "emacsess.el")
;;-------------------- PACKAGE DIRECTORIES MELPA
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
;;-------------------- END PACKAGE DIRECTORIES MELPA
;;------------------- HASKELL MODE
(require 'cl-lib)
(load "haskellmode.el")
;;------------------- END HASKELL MODE
;;-------------------- Vim mode 
;; (require 'evil)
;; (evil-mode 1)
;;-------------------- End Vim mode 
;;-------------------- EPA
(require 'epa-file)
(epa-file-enable)
;;-------------------- End EPA
;;-------------------- WHITESPACE -----------------------;;
(require 'whitespace)
;; highlight long lines
;; http://www.emacswiki.org/emacs/HighlightLongLines
(setq whitespace-style '(lines))
(setq whitespace-line-column 80)
(global-whitespace-mode 1)
(setq whitespace-style '(tabs trailing lines tab-mark))
;; end highlight long lines
;;-------------------- END WHITESPACE --------------------;;

;;-------------------- YASNIPPET AND AUTOCOMPLETE ---------------------;;
;; ... Yasnippet
(require 'yasnippet)
(yas-global-mode 1)
;; (setq yas-snippet-dirs '("~/.emacs.d/snippets"))
;; http://sethlakowske.com/why-i-use-emacs/fix-yasnippet-and-autocomplete-tab-key-collision/
;; Remove Yasnippet's default tab key binding
(define-key yas-minor-mode-map (kbd "<tab>") nil)
(define-key yas-minor-mode-map (kbd "TAB") nil)
;; Set Yasnippet's key binding to shift+tab
(define-key yas-minor-mode-map (kbd "<backtab>") 'yas-expand)
;; Alternatively use Control-c + tab
(define-key yas-minor-mode-map (kbd "\C-c TAB") 'yas-expand)
;; ... End Yasnippt - separate file doesn't work

;; Auto-complete
;; after auto-complete is installed
;; http://auto-complete.org/doc/manual.html#after-installation-check
;; http://auto-complete.org/doc/manual.html#installation
;; https://github.com/auto-complete/auto-complete
(require 'auto-complete)
(require 'auto-complete-config)
(ac-config-default)
(auto-complete-mode t)
(global-auto-complete-mode 1)
;;(add-to-list 'ac-dictionary-directories "~/.emacs.d/ac-dict")
;; End Auto-complete
;;-------------------- END YASNIPPET AND AUTOCOMPLETE ---------------------;;

;; Magit
(global-set-key (kbd "C-x G") 'magit-status)

;; START PAREDIT
;; https://www.emacswiki.org/emacs/ParEdit
(autoload 'enable-paredit-mode "paredit" "Turn on pseudo-structural editing of Lisp code." t)
(add-hook 'emacs-lisp-mode-hook       #'enable-paredit-mode)
(add-hook 'eval-expression-minibuffer-setup-hook #'enable-paredit-mode)
(add-hook 'ielm-mode-hook             #'enable-paredit-mode)
(add-hook 'lisp-mode-hook             #'enable-paredit-mode)
(add-hook 'lisp-interaction-mode-hook #'enable-paredit-mode)
(add-hook 'scheme-mode-hook           #'enable-paredit-mode)
(add-hook 'slime-repl-mode-hook (lambda () (paredit-mode +1)))
;; Stop SLIME's REPL from grabbing DEL,
;; which is annoying when backspacing over a '('
(defun override-slime-repl-bindings-with-paredit ()
  (define-key slime-repl-mode-map
    (read-kbd-macro paredit-backward-delete-key) nil))
(add-hook 'slime-repl-mode-hook 'override-slime-repl-bindings-with-paredit)
;; END PAREDIT
