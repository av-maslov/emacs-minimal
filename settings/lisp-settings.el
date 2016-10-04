;;;; Lisp
(add-to-list 'load-path "D:/MyTemp/LispStuff/slime/")
(setq inferior-lisp-program "D://MyTemp//LispStuff//clisp-2.49//clisp.exe")
;;(setq inferior-lisp-program "D://MyTemp//LispStuff//SBCL//sbcl.exe")
(load "slime.el")
(require 'slime-autoloads)
;;;; END Llisp

(defvar slime-repl-font-lock-keywords lisp-font-lock-keywords-2)
(defun slime-repl-font-lock-setup ()
  (setq font-lock-defaults
        '(slime-repl-font-lock-keywords
         ;; From lisp-mode.el
         nil nil (("+-*/.<>=!?$%_&~^:@" . "w")) nil
         (font-lock-syntactic-face-function
         . lisp-font-lock-syntactic-face-function))))

(add-hook 'slime-repl-mode-hook 'slime-repl-font-lock-setup)

(defadvice slime-repl-insert-prompt (after font-lock-face activate)
  (let ((inhibit-read-only t))
    (add-text-properties
     slime-repl-prompt-start-mark (point)
     '(font-lock-face
      slime-repl-prompt-face
      rear-nonsticky
      (slime-repl-prompt read-only font-lock-face intangible)))))
