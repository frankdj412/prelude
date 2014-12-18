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
(eval-after-load 'evil
  '(progn
     (define-key evil-normal-state-map (kbd "C-'") 'evil-scroll-up)
     (define-key evil-visual-state-map (kbd "C-'") 'evil-scroll-up)))

;; evil Nerd Commenter:
(prelude-require-package 'evil-nerd-commenter)
(defun dj/evilnc-default-hotkeys ()
  "Set the hotkeys of evil-nerd-comment"
  (interactive)
  (global-set-key (kbd "M-;") 'evilnc-comment-or-uncomment-lines)
  (global-set-key (kbd "C-c l") 'evilnc-comment-or-uncomment-to-the-line)
  (global-set-key (kbd "C-c c") 'evilnc-copy-and-comment-lines)
  (global-set-key (kbd "C-c p") 'evilnc-comment-or-uncomment-paragraphs)
  (eval-after-load 'evil
    '(progn
       (define-key evil-normal-state-map "gci" 'evilnc-comment-or-uncomment-lines)
       (define-key evil-normal-state-map "gcl" 'evilnc-comment-or-uncomment-to-the-line)
       (define-key evil-normal-state-map "gcc" 'evilnc-copy-and-comment-lines)
       (define-key evil-normal-state-map "gcp" 'evilnc-comment-or-uncomment-paragraphs)
       (define-key evil-normal-state-map "gcr" 'comment-or-uncomment-region))))

(dj/evilnc-default-hotkeys)


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
