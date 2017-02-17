;; Turn off beep
(setq visible-bell 1) 

(require 'ido)
(ido-mode t)

(global-hl-line-mode 1)
(global-linum-mode 1)

;;;; START Key bindings
;; (global-set-key (kbd "C-l") 'goto-line) ;; Better use it for buffer centering
(global-set-key [S-up] 'backward-paragraph)      ;; Jump to previous paragraph
(global-set-key [S-down] 'forward-paragraph)     ;; Jump to next paragraph
;; Switch window with Ctrl-TAB 
(global-set-key [C-tab] 'other-window)

;; Add new line without breaking the current line
(defun end-of-line-and-indented-new-line ()
  (interactive)
  (end-of-line)
  (newline-and-indent))
(global-set-key (kbd "<C-return>") 'end-of-line-and-indented-new-line)
;;;; END Key bindings

;; iBufer: http://emacswiki.org/emacs/IbufferMode
(global-set-key (kbd "C-x C-b") 'ibuffer)
(autoload 'ibuffer "ibuffer" "List buffers." t)

;; Override Ctrl-TAB in org mode
;; http://stackoverflow.com/questions/4333467/override-ctrl-tab-in-emacs-org-mode
(add-hook 'org-mode-hook
          '(lambda ()
             (define-key org-mode-map [(control tab)] nil)))

