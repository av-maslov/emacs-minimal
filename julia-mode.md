
["The ESS development environment seems to support julia out of the box."](https://emacs.stackexchange.com/questions/16444/how-do-you-configure-emacs-for-julia) 

https://github.com/emacs-ess/ESS/wiki/Julia

    git clone git://github.com/emacs-ess/ESS.git


file `emacs.ess.julia.el`  

```
;; Start Julia mode
;; https://github.com/JuliaEditorSupport/julia-emacs
;; Download and unzip into the plugins folder
(setq inferior-julia-program-name "/Applications/Julia-1.2.app/Contents/Resources/julia/bin/julia")
(add-to-list 'load-path (get-full-path "plugins/julia-emacs/"))
(require 'julia-mode)
;; End Julia mode 
```
