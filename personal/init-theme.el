;;; package --- Summary

;;; Commentary:
;;; Theme Setting

;;; Code:


;;; -----------------------------
;;; Change Theme
;;; -----------------------------
;; (disable-theme 'zenburn)
;; (prelude-require-package 'hc-zenburn-theme)
;; (load-theme 'hc-zenburn)
;; (load-theme 'solarized-dark t)


;;; -----------------------------
;;; Set font
;;; -----------------------------
;; For emacs daemon, default font has to be set in this way
;; Source: http://stackoverflow.com/questions/3984730/emacs-gui-with-emacs-daemon-not-loading-fonts-correctly"
(setq default-frame-alist '((font . "-apple-Monaco-medium-normal-normal-*-12-*-*-*-m-0-iso10646-1")))


;; Generally this works except daemon mode.
;; (set-default-font "-apple-Monaco-medium-normal-normal-*-12-*-*-*-m-0-iso10646-1")


;;; -----------------------------
;;; Set line spacing
;;; -----------------------------
;;; WARNING:
;; This may cause the company mode crash
;; (setq-default line-spacing 1)


;;; -----------------------------
;;; Set the start frame
;;; -----------------------------
(add-to-list 'default-frame-alist '(width . 85))
(add-to-list 'default-frame-alist '(height . 46))


;;; -----------------------------
;; Set line-wrap
;;; -----------------------------
;; (global-visual-line-mode 1)



;;; -----------------------------
;;; Set selection region color
;;; -----------------------------
;; To make it more contrast
(set-face-attribute 'region nil :background "#666")


;;;
