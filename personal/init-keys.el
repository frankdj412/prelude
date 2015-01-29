;;; package --- Summary

;;; Commentary:
;; The commands related to the editing.

;;; Code:

(prelude-require-package 'discover)
(prelude-require-package 'evil-nerd-commenter)


;; discover key-binding in current mode: (key-binding: C-h RET)
(global-discover-mode)


;; Artist mode:
;; Note: It seems that the rubber banding functionality fails
(setq artist-rubber-banding nil)

(global-unset-key [C-backspace])

(global-set-key (kbd "C-c /") 'anzu-replace-at-cursor-thing)
(global-set-key [C-backspace] 'c-hungry-delete)
(global-set-key (kbd "s->") 'ace-jump-buffer)
(global-set-key (kbd "C-x C-b") 'helm-buffers-list)

;; evil mode
(eval-after-load 'evil
  '(progn
     ;; No Enter is needed for such command
     ;; (define-key evil-ex-map "q" 'ido-kill-buffer)
     ;; (define-key evil-ex-map "e" 'helm-find-files)
     ;; (define-key evil-ex-map "b" 'helm-buffers-list)

     ;; Enter is needed after :<cmd>
     (evil-ex-define-cmd "b" 'helm-buffers-list)
     (evil-ex-define-cmd "e" 'helm-find-files)
     (evil-ex-define-cmd "q" 'ido-kill-buffer)

     (define-key evil-normal-state-map (kbd "C-'") 'evil-scroll-up)
     (define-key evil-visual-state-map (kbd "C-'") 'evil-scroll-up)))

;; evil Nerd Commenter:
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


;; switch Meta and Super key
;; (setq mac-option-modifier 'super)



;;; init-editor.el ends here
