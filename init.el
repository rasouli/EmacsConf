(require 'package)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-archives
   (quote
    (("gnu" . "http://elpa.gnu.org/packages/")
     ("melpa-stable" . "http://stable.melpa.org/packages/"))))
 '(package-selected-packages
   (quote
    (ac-haskell-process auto-complete dracula-theme nlinum haskell-mode))))

;; ensime baby
(use-package ensime
  :ensure t
  :pin melpa-stable)

(package-initialize)

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; disable welcome screen
(setq inhibit-startup-screen t)

;; hide ugly toolbar
(tool-bar-mode -1)

;; match parenthesis and bracket by typing first pair
(electric-pair-mode t)

;; turn on line number
(global-nlinum-mode t)

;; install dracula-theme from melpa
(load-theme 'dracula t)

;; load neo-tree and config it
(add-to-list 'load-path "/home/reza/.emacs.d/neotree")
(require 'neotree)
(global-set-key [f8] 'neotree-toggle)

;; neo-tree always jump to the current node
(setq neo-smart-open t)

;; haskell auto-complete mode
;; (require 'ac-haskell-process) ; if not installed via package.el
(add-hook 'interactive-haskell-mode-hook 'ac-haskell-process-setup)
(add-hook 'haskell-interactive-mode-hook 'ac-haskell-process-setup)
(eval-after-load "auto-complete"
  '(add-to-list 'ac-modes 'haskell-interactive-mode))


;; enable auto-complete globally
(global-auto-complete-mode t)

;; trigger auto-complete by TAB, after inserting character
(ac-set-trigger-key "TAB")

;; ensime specific configuration
;; none yet
