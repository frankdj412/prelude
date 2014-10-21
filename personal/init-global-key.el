;;; package --- Summary

;;; Commentary:
;;; Rebind some key

;;; Code:

;; (global-unset-key (kbd "C-i"))
(define-key evil-normal-state-map (kbd "C-'") 'evil-scroll-up)
(define-key evil-visual-state-map (kbd "C-'") 'evil-scroll-up)


;;; init-global-key.el ends here
