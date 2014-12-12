;;; Commentary:
;; 1. Ignore Capital case of the file
;; 2. Shrink the path length
;; 3. Clear the screen.

;;; Code:

;; eshell ignore cases
(setq eshell-cmpl-ignore-case t)

;; eshell shorten path name
(setq eshell-prompt-function
      (lambda ()
        (propertize
         (concat (if (getenv "HOSTNAME") (concat (getenv "HOSTNAME") ":"))
                 (if (string= (eshell/pwd) (getenv "HOME"))
                     "~"
                   (car (last (split-string (eshell/pwd) "[/]"))))
                 " $ ")
         'face
         `(:foreground "yellowgreen"))))
;; (setq eshell-highlight-prompt nil)


;; Eshell clear screen
(defun eshell/clear ()
  "Clear the eshell buffer"
  (interactive)
  (let ((inhibit-read-only t))
    (erase-buffer)))

;; Emacs use .bashrc file
;; (defun set-exec-path-from-shell-PATH ()
;;   (let ((path-from-shell (replace-regexp-in-string
;;                           "[ \t\n]*$"
;;                           ""
;;                           (shell-command-to-string "$SHELL --login -i -c 'echo $PATH'"))))
;;     (setenv "PATH" path-from-shell)
;;     (setq eshell-path-env path-from-shell) ; for eshell users
;;     (setq exec-path (split-string path-from-shell path-separator))))

;; (when window-system (set-exec-path-from-shell-PATH))
