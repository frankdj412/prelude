;;; personal.el --- Personal setting for emacs

;;; Commentary:
;; Personal configuration for emacs

;;; Code:
(global-linum-mode t)


;; It’s Nerd Commenter simulator which help you comment lines efficiently.
;; Checkout: https://github.com/redguardtoo/evil-nerd-commenter
(prelude-require-package 'evil-nerd-commenter)
(evilnc-default-hotkeys)


;; Theme Setting
(disable-theme 'zenburn)
(load-theme 'spolsky t)
;; (load-theme 'solarized-dark t)

;; Company Mode Setting
;; (setq company-idle-delay 0)
;; (setq company-minimum-prefix-length 0)

;; Set the start frame
;; (when window-system
;; (set-frame-size (selected-frame) 90 48)
;; (set-frame-position (selected-frame) 150 30)

(add-to-list 'default-frame-alist '(width . 90))
(add-to-list 'default-frame-alist '(height . 48))

;;; Configure the YaSnippet
(add-to-list 'load-path "~/.emacs.d/snippets")
(require 'yasnippet)

;; Reload all the snippets at startup
(yas/reload-all)
(add-hook 'prog-mode-hook
          '(lambda ()
             (yas-minor-mode)))

;; Use Helm to select the snippet
(defun shk-yas/helm-prompt (prompt choices &optional display-fn)
    "Use helm to select a snippet. Put this into `yas/prompt-functions.'"
    (interactive)
    (setq display-fn (or display-fn 'identity))
    (if (require 'helm-config)
        (let (tmpsource cands result rmap)
          (setq cands (mapcar (lambda (x) (funcall display-fn x)) choices))
          (setq rmap (mapcar (lambda (x) (cons (funcall display-fn x) x)) choices))
          (setq tmpsource
                (list
                 (cons 'name prompt)
                 (cons 'candidates cands)
                 '(action . (("Expand" . (lambda (selection) selection))))
                 ))
          (setq result (helm-other-buffer '(tmpsource) "*helm-select-yasnippet"))
          (if (null result)
              (signal 'quit "user quit!")
            (cdr (assoc result rmap))))
      nil))
(add-hook 'yas/prompt-functions 'shk-yas/helm-prompt)



;;; Configure Company-mode
;; Trigger key
(global-set-key (kbd "S-b") 'company-complete)
;;;
