 ;; Fireplace
;; M-x byte-compile-file
(compile-if-not-compiled (get-full-path "plugins/fireplace/") "fireplace.el")
(load (get-full-path "plugins/fireplace/fireplace"))
;; END Fireplace
