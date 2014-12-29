;;; package -- Summary

;;; Commentary:
;;; For ease of c++ programming

;;; Code

(defun cc/build-current-file ()
  "Runs the compilation of the current file.
Assumes it has the same name, but without an extension"
  (interactive)
  (compile (concat "g++ -Wall -g " buffer-file-name)))

(defun cc/run-executable ()
  (interactive)
  (shell-command "./a.out"))

(define-key c-mode-base-map (kbd "<f8>") 'cc/build-current-file)
(define-key c-mode-base-map (kbd "<f9>") 'cc/run-executable)

;;; init-cc-mode.el ends here
