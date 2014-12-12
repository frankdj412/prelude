;;; package --- Summary

;;; Commentary:
;; The commands related to the editing.

;;; Code:

;;; anzu replacing:
(global-set-key (kbd "C-c /") 'anzu-replace-at-cursor-thing)


;; discover key-binding in current mode: (key-binding: C-h RET)
(prelude-require-package 'discover)
(global-discover-mode)


;; Artist mode:
;; Note: It seems that the rubber banding functionality fails
(setq artist-rubber-banding nil)


;; evil Setting
(define-key evil-normal-state-map (kbd "C-'") 'evil-scroll-up)
(define-key evil-visual-state-map (kbd "C-'") 'evil-scroll-up)

;; evil Nerd Commenter:
(prelude-require-package 'evil-nerd-commenter)
(evilnc-default-hotkeys)

;; org mode
(evil-declare-key 'normal org-mode-map
  "gk" 'outline-previous-visible-heading
  "gh" 'outline-up-heading)

;; ace jump
(global-unset-key [C-backspace])
(global-set-key [C-backspace] 'c-hungry-delete)
(global-set-key (kbd "s->") 'ace-jump-buffer)

;; switch Meta and Super key
;; (setq mac-option-modifier 'super)



;;; init-editor.el ends here
