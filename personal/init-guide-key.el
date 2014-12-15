;;; package --- Summary

;;; Commentary:

;;; Code:

(prelude-require-package 'guide-key)
(require 'guide-key)

(defun dj/toggle-guide-key ()
  "Toggle golden-ratio mode on and off."
  (interactive)
  (if (symbol-value guide-key-mode)
      (guide-key-mode -1)
    (guide-key-mode)))

(dj/toggle-guide-key)

(setq guide-key/guide-key-sequence `("C-x"
                                     "c-c"
                                     "g"
                                     "z"
                                     "C-h")
      guide-key/recursive-key-sequence-flag t
      guide-key/popup-window-position 'right
      guide-key/idle-delay 1
      guide-key/text-scale-amount 0)
      ;; use this in your ~/.spacemacs file to enable tool tip in a
      ;; graphical envrionment
      ;; guide-key-tip/enabled (if window-system t)

(defun guide-key/my-hook-function-for-org-mode ()
  (guide-key/add-local-highlight-command-regexp "org-"))

(add-hook 'org-mode-hook 'guide-key/my-hook-function-for-org-mode)

(guide-key-mode 1)


;;; init-guide-key.el ends here
