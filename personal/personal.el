;;; personal.el --- Personal setting for emacs

;;; Commentary:
;; Personal configuration for emacs

;;; Code:
;; (global-linum-mode t)
;; (global-nlinum-mode 1)

(add-hook 'cc-mode 'linum-mode-hook)



;;; --------------------
;;; Evil Nerd Commenter
;;; --------------------
;; It’s Nerd Commenter simulator which help you comment lines efficiently.
;; Checkout: https://github.com/redguardtoo/evil-nerd-commenter
(prelude-require-package 'evil-nerd-commenter)
(evilnc-default-hotkeys)




;;; --------------------
;;; Neotree
;;; --------------------
;; F8 to trigger
(prelude-require-package 'neotree)
(global-set-key (kbd "<f5>") 'neotree-toggle)

;; Solve key "q" conflict with evil-mode
(add-hook 'neotree-mode-hook
            (lambda ()
              (define-key evil-normal-state-local-map (kbd "TAB") 'neotree-enter)
              (define-key evil-normal-state-local-map (kbd "SPC") 'neotree-enter)
              (define-key evil-normal-state-local-map (kbd "q") 'neotree-hide)
              (define-key evil-normal-state-local-map (kbd "RET") 'neotree-enter)))



;;; --------------------
;;; Auto indentation
;;; --------------------
;; (electric-indent-mode +1)



;;; --------------------
;;; Disable spell check
;;; --------------------
;; (setq prelude-flyspell nil)



;;; --------------------
;;; OSX Setting
;;; --------------------
;; Switch Meta and Super key

;; (setq mac-option-modifier 'super)




;;; --------------------
;;; Color-identifier
;;; --------------------
;; Website: https://github.com/ankurdave/color-identifiers-mode
;; This is a funny stuff to play around making code more clear
;; (add-hook 'after-init-hook 'global-color-identifiers-mode)
;; (add-hook 'prog-mode-hook 'global-color-identifiers-mode)
;; (global-color-identifiers-mode)
;; (add-hook 'prog-mode-hook 'rainbow-identifiers-mode)
;; (setq debug-on-error t)


;; (require 'powerline)
;; (powerline-default-theme)


;;;
