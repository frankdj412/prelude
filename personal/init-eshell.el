;;; Commentary:
;; 1. Ignore Capital case of the file
;; 2. Shrink the path length
;; 3. Clear the screen.

;;; Code:

(setq eshell-cmpl-ignore-case t)

(setq eshell-prompt-function
      (lambda ()
        (propertize
         (concat (if (getenv "HOSTNAME") (getenv "HOSTNAME") "localhost") ":"
                 (if (string= (eshell/pwd) (getenv "HOME"))
                     "~"
                   (car (last (split-string (eshell/pwd) "[/]"))))
                 " $ ")
         'face
         `(:foreground "yellowgreen"))))
;; (setq eshell-highlight-prompt nil)

(defun eshell/clear ()
  "Clear the eshell buffer"
  (interactive)
  (let ((inhibit-read-only t))
    (erase-buffer)))
