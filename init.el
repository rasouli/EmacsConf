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
 '(package-selected-packages (quote (dracula-theme nlinum haskell-mode))))
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

;; (add-to-list 'custom-theme-load-path "~/.emacs.d/themes")
(load-theme 'dracula t)
