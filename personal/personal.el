;;; personal.el --- Personal setting for emacs

;;; Commentary:
;; Personal configuration for emacs

;;; Code:
;; (global-linum-mode t)
;;(global-nlinum-mode 1)



;;; --------------------
;;; Evil Nerd Commenter
;;; --------------------
;; It’s Nerd Commenter simulator which help you comment lines efficiently.
;; Checkout: https://github.com/redguardtoo/evil-nerd-commenter
(prelude-require-package 'evil-nerd-commenter)
(evilnc-default-hotkeys)



;;; --------------------
;;; Theme Setting
;;; --------------------
;; (disable-theme 'zenburn)
;; (prelude-require-package 'hc-zenburn-theme)
;; (load-theme 'hc-zenburn)
;; (load-theme 'solarized-dark t)


;; Set font
;; (set-frame-font "-apple-Anonymous_Pro-medium-normal-normal-*-*-*-*-*-m-0-iso10646-1e")


;; Set line spacing
(setq-default line-spacing 2)

;;; --------------------
;;; Company Mode Setting
;;; --------------------
;; (setq company-idle-delay 0)
;; (setq company-minimum-prefix-length 0)



;;; Set the start frame
;; (when window-system
;; (set-frame-size (selected-frame) 90 48)
;; (set-frame-position (selected-frame) 150 30)
(add-to-list 'default-frame-alist '(width . 90))
(add-to-list 'default-frame-alist '(height . 48))






;;; Company Mode
;; Trigger key
(global-set-key (kbd "S-b") 'company-complete)



;;; Neotree
;; F8 to trigger
(prelude-require-package 'neotree)
(global-set-key [f8] 'neotree-toggle)

;; Solve key "q" conflict with evil-mode
(add-hook 'neotree-mode-hook
            (lambda ()
              (define-key evil-normal-state-local-map (kbd "TAB") 'neotree-enter)
              (define-key evil-normal-state-local-map (kbd "SPC") 'neotree-enter)
              (define-key evil-normal-state-local-map (kbd "q") 'neotree-hide)
              (define-key evil-normal-state-local-map (kbd "RET") 'neotree-enter)))



(electric-indent-mode +1)
;;;
