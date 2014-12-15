;;; package --- Summary

;;; Commentary:
;; My custom setting for emacs.

;;; Code:
(prelude-require-package 'names)
(require 'names-dev)


(define-namespace dj/

:autoload
;; open cheat sheet in evernote
(defun open-emacs-cheatsheet (arg)
  (interactive "P")
  (let* ((filename "https://www.evernote.com/shard/s257/nl/34264237/6f524890-22a8-4439-9598-778f86a1d180/")
         (open (pcase system-type
                 (`darwin "open")
                 ((or `gnu `gnu/linux `gnu/kfreebsd) "xdg-open")))
         (program (if (or arg (not open))
                      (read-shell-command "Open current file with: ")
                    open)))
    (start-process "open-emacs-cheatsheet" nil program filename))))


;;; init-util.el ends here
