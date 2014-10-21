;;; package -- Summary:

;;; Commentary:
;; This is the configuration for irony mode
;; For installation details, please visit: http://blog.lpch.me/posts/emacs-an-zhuang-irony-on-mac-os-x.html

;;; Code:

(prelude-require-package 'irony)
(prelude-require-package 'company-irony)

;; Setting environment
(setenv "LD_LIBRARY_PATH" "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/")

(eval-after-load 'company
  '(add-to-list 'company-backends 'company-irony))

;; Avoid conflicts
(setq company-backends (remove 'company-semantic company-backends))
(setq company-backends (remove 'company-clang company-backends))


;; (setq company-backends (remove 'company-clang company-backends))
;; (defun company-yasnippet-or-completion ()
;;   (interactive)
;;   (if (yas/expansion-at-point)
;;       (progn (company-abort)
;;              (yas/expand))
;;     (company-complete-common)))

;; (defun yas/expansion-at-point ()
;;   (first (yas--current-key)))

;; (define-key company-active-map (kbd "TAB") 'company-yasnippet-or-completion)
;; (define-key company-active-map (kbd "<tab>") 'company-yasnippet-or-completion)

;; (optional) adds CC special commands to `company-begin-commands' in order to
;; trigger completion at interesting places, such as after scope operator
;;     std::|
(add-hook 'irony-mode-hook 'company-irony-setup-begin-commands)


(add-hook 'c++-mode-hook 'irony-mode)
(add-hook 'c-mode-hook 'irony-mode)
(add-hook 'objc-mode-hook 'irony-mode)

;; replace the `completion-at-point' and `complete-symbol' bindings in
;; irony-mode's buffers by irony-mode's function
(defun my-irony-mode-hook ()
  (define-key irony-mode-map [remap completion-at-point]
    'irony-completion-at-point-async)
  (define-key irony-mode-map [remap complete-symbol]
    'irony-completion-at-point-async))
(add-hook 'irony-mode-hook 'my-irony-mode-hook)
