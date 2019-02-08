(add-hook 'haskell-mode-hook 'turn-on-haskell-doc-mode)


;; !!! Only one out of three options:
;;(add-hook 'haskell-mode-hook 'turn-on-haskell-indentation)
;;(add-hook 'haskell-mode-hook 'turn-on-haskell-indent)
(add-hook 'haskell-mode-hook 'turn-on-haskell-simple-indent)
;; End !!! Only one out of three options:
