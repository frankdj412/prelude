;;; package -- Summary

;;; Commentary:


;;; Code:
(setq org-adapt-indentation nil)
(setq org-src-fontify-natively t)
(setq org-startup-indented t)

(defun dj-org-mode-defaults ()
  "DJ's hook for org-mode"
  ;; Set fill-column as 75 is better than 80
  (turn-on-auto-fill)
  ;; Latex template support
  (turn-on-org-cdlatex))

(setq org-format-latex-options (plist-put org-format-latex-options
                                          :scale 1.2))

(setq dj-org-mode-hook 'dj-org-mode-defaults)

(add-hook 'org-mode-hook (lambda () (run-hooks 'dj-org-mode-hook)))

;;; init-org-mode.el ends here
