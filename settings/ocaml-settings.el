;;; Start Ocaml settings
;; git clone https://github.com/ocaml/tuareg
(add-to-list 'load-path "~/tuareg/")
(load "~/tuareg/tuareg.el")

(autoload 'tuareg-mode "tuareg" "Major mode for editing Caml code" t)
    (autoload 'camldebug "camldebug" "Run the Caml debugger" t)
    (autoload 'tuareg-imenu-set-imenu "tuareg-imenu" 
      "Configuration of imenu for tuareg" t)
(add-hook 'tuareg-mode-hook 'tuareg-imenu-set-imenu)
(setq auto-mode-alist 
      (append '(("\\.ml[ily]?$" . tuareg-mode)
                ("\\.topml$" . tuareg-mode))
              auto-mode-alist))

(add-hook 'tuareg-mode-hook #'enable-paredit-mode)
;;; End Ocaml settings
