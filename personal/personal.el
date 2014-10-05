;;; personal.el --- Personal setting for emacs

;;; Commentary:
;; Personal configuration for emacs

;;; Code:
(global-linum-mode t)
;; (global-nlinum-mode 1)



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
;; For emacs daemon, default font has to be set in this way
;; Source: http://stackoverflow.com/questions/3984730/emacs-gui-with-emacs-daemon-not-loading-fonts-correctly"
(setq default-frame-alist '((font . "-apple-Monaco-medium-normal-normal-*-12-*-*-*-m-0-iso10646-1")))

;; Generally this works except daemon mode.
;; (set-default-font "-apple-Monaco-medium-normal-normal-*-12-*-*-*-m-0-iso10646-1")


;; Set line spacing
;;
;; WARNING:
;; This may cause the company mode crash
;; (setq-default line-spacing 1)



;; Set line-wrap
(global-visual-line-mode 1)




;;; --------------------
;;; Company Mode Setting
;;; --------------------
;; (setq company-idle-delay 0)
;; (setq company-minimum-prefix-length 0)



;;; Set the start frame
;; (when window-system
;; (set-frame-size (selected-frame) 90 48)
;; (set-frame-position (selected-frame) 150 30)
(add-to-list 'default-frame-alist '(width . 85))
(add-to-list 'default-frame-alist '(height . 46))


;; Trigger key
(global-set-key (kbd "s-b") 'company-complete)


;; Irony-mode
;; (eval-after-load 'company
;;   '(add-to-list 'company-backends 'company-irony))

;; ;; (optional) adds CC special commands to `company-begin-commands' in order to
;; ;; trigger completion at interesting places, such as after scope operator
;; ;;     std::|
;; (add-hook 'irony-mode-hook 'company-irony-setup-begin-commands)




;;; --------------------
;;; Neotree
;;; --------------------
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



;;; --------------------
;;; Auto indentation
;;; --------------------
(electric-indent-mode +1)



;;; --------------------
;;; Disable spell check
;;; --------------------
(setq prelude-flyspell nil)

;;;
