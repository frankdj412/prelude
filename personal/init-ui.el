;;; package --- Summary

;;; Commentary:

;;; Code:

(prelude-require-packages '(face-remap+
                            zoom-frm
                            monokai-theme
                            use-package
                            powerline
                            powerline-evil))


(require 'use-package)
(require 'face-remap+)
(require 'zoom-frm)
(require 'powerline)
(require 'powerline-evil)

;; Font:
;; The codes are copied from spacemacs configuration
(defun dj/set-font (font size &optional options)
  (let* ((fontstr (if options
                      (format "%s-%s:%s" font size options)
                    (format "%s-%s" font size))))
    (add-to-list 'default-frame-alist (cons 'font fontstr))
    (set-frame-font fontstr)))

(dj/set-font "Source Code Pro for Powerline" 13 "light")
(setq-default line-spacing 2)
(setq-default left-fringe-width 8)
;; (set-face-attribute 'region nil :foreground "white" :background "#Aa7941")

(add-to-list 'default-frame-alist '(width . 83))
(add-to-list 'default-frame-alist '(height . 39))

(global-set-key (kbd "C-+") 'zoom-in)
(global-set-key (kbd "C--") 'zoom-out)

;; Theme:
(disable-theme 'zenburn)
(powerline-evil-vim-color-theme)


(custom-set-faces
 '(font-lock-builtin-face ((t (:inherit font-lock-type-face :foreground nil))))
 '(powerline-evil-normal-face ((t (:inherit powerline-evil-base-face :background "chartreuse4"))))
 '(org-level-1 ((t (:height 1))))
 '(org-level-2 ((t (:height 1))))
 '(org-level-3 ((t (:height 1))))
 '(org-level-4 ((t (:height 1))))
 '(org-quote ((t (:foreground "SkyBlue3" :slant italic))) t))


;;; init-gui.el ends here
