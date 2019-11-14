;; Start Julia mode
;; https://github.com/JuliaEditorSupport/julia-emacs
;; Download and unzip into the plugins folder
;; (setq inferior-julia-program-name "/Applications/Julia-1.2.app/Contents/Resources/julia/bin/julia")
(add-to-list 'load-path (get-full-path "plugins/julia-emacs/"))
(require 'julia-mode)
;; End Julia mode 
