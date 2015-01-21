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
(require 'zoom-frm)
(require 'powerline)
(require 'powerline-evil)

;; The codes are copied from spacemacs configuration
(defun dj/set-font (font size &optional options)
  (let* ((fontstr (if options
                      (format "%s-%s:%s" font size options)
                    (format "%s-%s" font size))))
    (add-to-list 'default-frame-alist (cons 'font fontstr))
    (set-frame-font fontstr)))

;; Font:
(dj/set-font "Source Code Pro for Powerline" 14 "light")
(setq-default line-spacing 2)
(set-face-attribute 'region nil :foreground "white" :background "#Aa7941")

(set-fringe-mode 8)
(setq diff-hl-fringe-bmp-function 'diff-hl-fringe-bmp-from-type)

(add-to-list 'default-frame-alist '(width . 86))
(add-to-list 'default-frame-alist '(height . 39))

(global-set-key (kbd "C-+") 'zoom-in)
(global-set-key (kbd "C--") 'zoom-out)


;; Theme:
;; (disable-theme 'zenburn)
;; (load-theme 'solarized-dark)
;; (setq prelude-theme 'solarized-dark)
(powerline-evil-vim-color-theme)

(custom-set-faces
 '(font-lock-builtin-face ((t (:inherit font-lock-type-face :foreground nil))))
 '(powerline-evil-normal-face ((t (:inherit powerline-evil-base-face :background "chartreuse4"))))
 ;; '(org-level-1 ((t (:height 1))))
 ;; '(org-level-2 ((t (:height 1))))
 ;; '(org-level-3 ((t (:height 1))))
 ;; '(org-level-4 ((t (:height 1))))
 '(org-quote ((t (:foreground "SkyBlue3"))) t))
 ;; '(org-code ((t (:foreground "#b58900")))))


;;; init-gui.el ends here
