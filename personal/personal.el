;;; personal.el --- Personal setting for emacs

;;; Commentary:
;; Personal configuration for emacs

;;; Code:

;;; Neotree
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
;;; Disable spell check
;;; --------------------
;; (setq prelude-flyspell nil)

;; (desktop-save-mode 1)

;;; Color-identifier:
;; Website: https://github.com/ankurdave/color-identifiers-mode
;; This is a funny stuff to play around making code more clear
;; (add-hook 'after-init-hook 'global-color-identifiers-mode)
;; (add-hook 'prog-mode-hook 'global-color-identifiers-mode)
;; (global-color-identifiers-mode)
;; (add-hook 'prog-mode-hook 'rainbow-identifiers-mode)
;; (setq debug-on-error t)


;;; Latex:
(setq TeX-PDF-mode t)


;;; Vagrant
(eval-after-load 'tramp
  '(vagrant-tramp-enable))

;;; Ack
(prelude-require-package 'ack)
(require 'ack)


;;;
