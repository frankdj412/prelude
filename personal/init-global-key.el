;;; package --- Summary

;;; Commentary:
;; Rebind some key

;;; Code:

;; (global-unset-key (kbd "C-i"))
(define-key evil-normal-state-map (kbd "C-'") 'evil-scroll-up)
(define-key evil-visual-state-map (kbd "C-'") 'evil-scroll-up)

;; Solve for the ret-and-indent currently
;; (define-key evil-insert-state-map [remap newline] 'evil-ret-and-indent) ;

(evil-declare-key 'normal org-mode-map
  "gk" 'outline-previous-visible-heading
  "gh" 'outline-up-heading)

(global-set-key (kbd "s->") 'ace-jump-buffer)

;; Switch Meta and Super key
;; (setq mac-option-modifier 'super)


;;; init-global-key.el ends here
