;;; package --- Summary

;;; Commentary:
;;; Theme Setting

;;; Code:

;;; -----------------------------
;;; Set font
;;; -----------------------------
;; For emacs daemon, default font has to be set in this way
;; Source: http://stackoverflow.com/questions/3984730/emacs-gui-with-emacs-daemon-not-loading-fonts-correctly"
(setq default-frame-alist '((font . "-apple-Monaco-medium-normal-normal-*-12-*-*-*-m-0-iso10646-1")))

;; Generally this works except daemon mode.
;; (set-default-font "-apple-Monaco-medium-normal-normal-*-12-*-*-*-m-0-iso10646-1")

;;; Set line spacing
;;; WARNING: This may cause the company mode crash
(setq-default line-spacing 2)


;;; Set the start frame
(add-to-list 'default-frame-alist '(width . 85))
(add-to-list 'default-frame-alist '(height . 40))


;;; Set selection region color more contrast
(set-face-attribute 'region nil :background "#666")


;;; The window size will be resized with respect to font size
(require 'face-remap+)


(prelude-require-package 'smart-mode-line)
(prelude-require-package 'powerline)
(require 'smart-mode-line)
(sml/setup)
(sml/apply-theme 'powerline)


;;;
