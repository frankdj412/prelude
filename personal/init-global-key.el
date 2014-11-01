;;; package --- Summary

;;; Commentary:
;;; Rebind some key

;;; Code:

;; (global-unset-key (kbd "C-i"))
(define-key evil-normal-state-map (kbd "C-'") 'evil-scroll-up)
(define-key evil-visual-state-map (kbd "C-'") 'evil-scroll-up)

;; Solve for the ret-and-indent currently
(define-key evil-insert-state-map [remap newline] 'evil-ret-and-indent)


;; The "zoom-frm" package gives frame font adjustment
(prelude-require-package 'zoom-frm)
(require 'zoom-frm)
(global-set-key (kbd "C-+") 'zoom-in)
(global-set-key (kbd "C--") 'zoom-out)


(global-set-key (kbd "s->") 'ace-jump-buffer)
;;; init-global-key.el ends here
