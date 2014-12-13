;;; package --- Summary

;;; Commentary:
;; Theme Setting

;;; Code:

(disable-theme 'zenburn)
(load-theme 'monokai)

(custom-theme-set-faces
 `monokai

 ;; '(default ((t (:background nil))))
 ;; company
 '(company-preview-common ((t (:foreground "#F8F8F0"))))
 '(company-tooltip-common ((t (:foreground "#F8F8F0" :underline nil))))
 '(company-tooltip-common-selection ((t (:foreground "#F8F8F0" :underline nil))))

 ;; theme
 '(font-lock-builtin-face ((t (:foreground "#66d9ef" :weight normal))))
 '(whitespace-empty ((t (:background "IndianRed4"))))

 ;; org mode setting
 '(org-quote ((t (:inherit org-block :foreground "SkyBlue3" :slant italic))) t)

 ;; powerline setting
 '(powerline-evil-normal-face ((t (:inherit powerline-evil-base-face :background "chartreuse4")))))


;;; init-theme.el ends here
