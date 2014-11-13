;;; package --- Summary

;;; Commentary:
;;; Theme Setting

;;; Code:

;;; -----------------------------
;;; Set font
;;; -----------------------------
;; For emacs daemon, default font has to be set in this way
;; Source: http://stackoverflow.com/questions/3984730/emacs-gui-with-emacs-daemon-not-loading-fonts-correctly"
(setq default-frame-alist '((font . "-*-monacobsemi-semibold-normal-normal-*-12-*-*-*-p-0-iso10646-1")))

;; Generally this works except daemon mode.
;; (set-default-font "-apple-Monaco-medium-normal-normal-*-12-*-*-*-m-0-iso10646-1")

(setq-default line-spacing 2)

(add-to-list 'default-frame-alist '(width . 90))
(add-to-list 'default-frame-alist '(height . 45))

;;; Set selection region color more contrast
(set-face-attribute 'region nil :background "#666")

;; The window size will be resized with respect to font size
(prelude-require-package 'zoom-frm)
(prelude-require-package 'face-remap+)
(require 'face-remap+)

;; The "zoom-frm" package gives frame font adjustment
(require 'zoom-frm)
(global-set-key (kbd "C-+") 'zoom-in)
(global-set-key (kbd "C--") 'zoom-out)

;;; Adjust the frame transparency
;;; This is copied from purcell's config.
;;; Link: http://github.com/purcell/emacs.d/blob/master/lisp/init-gui-frames.el
(defun sanityinc/adjust-opacity (frame incr)
  (let* ((oldalpha (or (frame-parameter frame 'alpha) 100))
         (newalpha (+ incr oldalpha)))
    (when (and (<= frame-alpha-lower-limit newalpha) (>= 100 newalpha))
      (modify-frame-parameters frame (list (cons 'alpha newalpha))))))

(global-set-key (kbd "M-C-8") '(lambda () (interactive) (sanityinc/adjust-opacity nil -5)))
(global-set-key (kbd "M-C-9") '(lambda () (interactive) (sanityinc/adjust-opacity nil 5)))
(global-set-key (kbd "M-C-0") '(lambda () (interactive) (modify-frame-parameters nil `((alpha . 100)))))

;; (add-to-list 'default-frame-alist '(alpha . 95))

(prelude-require-package 'smart-mode-line)
(prelude-require-package 'powerline)

(require 'smart-mode-line)
(sml/setup)
(sml/apply-theme 'powerline)

;;; init-theme.el ends here
