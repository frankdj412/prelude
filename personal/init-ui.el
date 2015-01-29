;;; package --- Summary

;;; Commentary:

;;; Code:

(prelude-require-packages '(face-remap+
                            zoom-frm))

(require 'zoom-frm)
(global-set-key (kbd "C-+") 'zoom-in)
(global-set-key (kbd "C--") 'zoom-out)

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
