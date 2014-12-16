;;; package -- Summary

;;; Commentary:


;;; Code:

(setq org-adapt-indentation nil)
(setq org-src-fontify-natively t)
(setq org-startup-indented t)

;; solve the conflict with helm-describe-key
;; It's originally binded to 'org-table-info
(define-key org-mode-map (kbd "C-c ?") nil)

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

;; Exporting the source code in black background in default
;; (defun my/org-inline-css-hook (exporter)
;;   "Insert custom inline css to automatically set the background
;; of code to whatever theme I'm using's background"
;;   (when (eq exporter 'html)
;;     (let* ((my-pre-bg (face-background 'default))
;;            (my-pre-fg (face-foreground 'default)))
;;       (setq org-html-head-extra
;;             (concat org-html-head-extra
;;                     (format "<style type=\"text/css\">\n pre.src
;;                             {background-color: %s; color:
;;                             %s;}</style>\n" my-pre-bg my-pre-fg))))))

;; (add-hook 'org-export-before-processing-hook 'my/org-inline-css-hook)

;;; init-org-mode.el ends here
