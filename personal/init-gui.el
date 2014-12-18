;;; package --- Summary

;;; Commentary:

;;; Code:

(prelude-require-package 'face-remap+)
(prelude-require-package 'zoom-frm)
(prelude-require-package 'monokai-theme)

(require 'face-remap+)
(require 'zoom-frm)

;; Font:
;; The codes are copied from spacemacs configuration
(defun dj/set-font (font size &optional options)
  (let* ((fontstr (if options
                      (format "%s-%s:%s" font size options)
                    (format "%s-%s" font size))))
    (add-to-list 'default-frame-alist (cons 'font fontstr))
    (set-frame-font fontstr)))

(dj/set-font "Source Code Pro" 13)
(setq-default line-spacing 2)
(setq-default left-fringe-width 8)
(set-face-attribute 'region nil :foreground "white" :background "#Aa7941")

(add-to-list 'default-frame-alist '(width . 80))
(add-to-list 'default-frame-alist '(height . 41))

(global-set-key (kbd "C-+") 'zoom-in)
(global-set-key (kbd "C--") 'zoom-out)

;; Theme:
(disable-theme 'zenburn)
(load-theme 'monokai)

(custom-theme-set-faces
 `monokai

 ;; '(default ((t (:background nil))))
 ;; company
 '(company-preview-common ((t (:foreground "#F8F8F0" :underline t))))
 '(company-tooltip-common ((t (:foreground "#F8F8F0" :underline nil))))
 '(company-tooltip-common-selection ((t (:foreground "#F8F8F0" :underline nil))))

 ;; theme
 '(font-lock-builtin-face ((t (:foreground "#66d9ef" :weight normal))))
 '(font-lock-comment-face ((t (:foreground "gray50"))))
 '(whitespace-empty ((t (:background "IndianRed4"))))

 ;; org mode setting
 '(org-quote ((t (:inherit org-block :foreground "SkyBlue3" :slant italic))) t)
 '(org-code ((t (:foreground "NavajoWhite3"))))

 '(org-level-1 ((t (:inherit variable-pitch :foreground "#FD971F" :height 1.05))))
 '(org-level-2 ((t (:inherit variable-pitch :foreground "#A6E22E" :height 1.05))))
 '(org-level-3 ((t (:inherit variable-pitch :foreground "#66D9EF" :height 1.05))))
 '(org-level-4 ((t (:inherit variable-pitch :foreground "#E6DB74" :height 1.05))))
 '(variable-pitch ((t nil)))

 ;; powerline setting
 '(powerline-evil-normal-face ((t (:inherit powerline-evil-base-face :background "chartreuse4")))))


;;; init-gui.el ends here
