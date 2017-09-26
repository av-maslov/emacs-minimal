(setq-default fill-column 85)

;;;; http://ergoemacs.org/emacs/emacs_toggle-word-wrap.html
(setq tooggle-word-wrap t)

(setq path-to-emacsd "c:/Users/masloal/AppData/Roaming/.emacs.d/")
(defun get-full-path (subpath)
  (concat path-to-emacsd subpath))


(setq backup-directory-alist
      `((".*" . , "C:/1maslov/tmp_emacs/")))

(setq auto-save-file-name-transforms
      `((".*" , "C:/1maslov/tmp_emacs/" t)))

;;; After symon is installed
;; (require 'symon)
;; (add-to-list 'load-path path-to-emacsd)
(add-to-list 'load-path (get-full-path "settings/"))
(add-to-list 'load-path (get-full-path "customizations/"))
(add-to-list 'load-path (get-full-path "customizations/packages/"))
(add-to-list 'load-path (get-full-path "plugins/"))
(add-to-list 'load-path (get-full-path "plugins/smex/"))
(add-to-list 'load-path (get-full-path "plugins/aceJump/"))
(add-to-list 'load-path (get-full-path "plugins/highlight-symbol/"))
(add-to-list 'load-path (get-full-path "plugins/yasnippet/"))

;;; ... Yasnippet
(require 'yasnippet)
(yas-global-mode 1)
(setq yas-snippet-dirs '("~/.emacs.d/snippets"))

;; temp: ;; Start Julia mode
;; temp: ;; https://github.com/JuliaEditorSupport/julia-emacs
;; temp: ;; Download and unzip into the plugins folder
(add-to-list 'load-path (get-full-path "plugins/julia-emacs/"))
(require 'julia-mode)
