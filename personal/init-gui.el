;;; package --- Summary

;;; Commentary:

;;; Code:

;; font
;; Source: http://stackoverflow.com/questions/3984730/emacs-gui-with-emacs-daemon-not-loading-fonts-correctly"
(setq default-frame-alist '((font . "-*-Anonymous Pro-normal-normal-normal-*-*-*-*-*-m-0-iso10646-1")))
(set-face-attribute 'default nil :height 150)

(setq-default line-spacing 5)

(add-to-list 'default-frame-alist '(width . 90))
(add-to-list 'default-frame-alist '(height . 45))

;; sharp the selection color
(set-face-attribute 'region nil :foreground "white" :background "#Aa7941")

;; window size will be resized with respect to font size
(prelude-require-package 'zoom-frm)
(prelude-require-package 'face-remap+)
(require 'face-remap+)

;; frame adjust with respect to the font size
(require 'zoom-frm)
(global-set-key (kbd "C-+") 'zoom-in)
(global-set-key (kbd "C--") 'zoom-out)

;; frame transparency
;; Source: http://github.com/purcell/emacs.d/blob/master/lisp/init-gui-frames.el
(defun sanityinc/adjust-opacity (frame incr)
  (let* ((oldalpha (or (frame-parameter frame 'alpha) 100))
         (newalpha (+ incr oldalpha)))
    (when (and (<= frame-alpha-lower-limit newalpha) (>= 100 newalpha))
      (modify-frame-parameters frame (list (cons 'alpha newalpha))))))

(global-set-key (kbd "M-C-8") '(lambda () (interactive) (sanityinc/adjust-opacity nil -5)))
(global-set-key (kbd "M-C-9") '(lambda () (interactive) (sanityinc/adjust-opacity nil 5)))
(global-set-key (kbd "M-C-0") '(lambda () (interactive) (modify-frame-parameters nil `((alpha . 100)))))

(setq-default truncate-lines t)

;; (add-to-list 'default-frame-alist '(alpha . 95))

;;; init-gui.el ends here
