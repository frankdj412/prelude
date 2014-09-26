;;; personal.el --- Personal setting for emacs

;;; Commentary:
;; Personal configuration for emacs

;;; Code:
(global-linum-mode t)


;; It’s Nerd Commenter simulator which help you comment lines efficiently.
;; Checkout: https://github.com/redguardtoo/evil-nerd-commenter
(prelude-require-package 'evil-nerd-commenter)
(evilnc-default-hotkeys)


;; Theme Setting
;; (disable-theme 'zenburn)
;; (load-theme 'solarized-dark t)

;; Company Mode Setting
(setq company-idle-delay 0)

;; Set the start frame
;; (when window-system
;; (set-frame-size (selected-frame) 90 48)
;; (set-frame-position (selected-frame) 150 30)

(add-to-list 'default-frame-alist '(width . 90))
(add-to-list 'default-frame-alist '(height . 48))
