;; Turn off beep
(setq visible-bell 1) 

(require 'ido)
(ido-mode t)

(global-hl-line-mode 1)
(global-linum-mode 1)

;; Key bindings
(global-set-key (kbd "C-l") 'goto-line)
(global-set-key [S-up] 'backward-paragraph)      ;; Jump to previous paragraph
(global-set-key [S-down] 'forward-paragraph)     ;; Jump to next paragraph
;; Switch window with Ctrl-TAB 
(global-set-key [C-tab] 'other-window)

;; iBufer: http://emacswiki.org/emacs/IbufferMode
(global-set-key (kbd "C-x C-b") 'ibuffer)
(autoload 'ibuffer "ibuffer" "List buffers." t)
