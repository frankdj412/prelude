;;; Compantery:
;;; Company Mode Setting

;;; Code:
;; (setq company-idle-delay 0)
;; (setq company-minimum-prefix-length 0)

;; Redefine key bindings
(eval-after-load 'company
  '(progn
     ;; (define-key company-active-map (kbd "TAB") 'company-select-next)
     ;; (define-key company-active-map [tab] 'company-select-next)
     ;; (define-key company-active-map (kbd "TAB") 'company-complete-common)
     ;; (define-key company-active-map [tab] 'company-complete-common)
     (define-key company-active-map (kbd "C-n") 'company-select-next)
     (define-key company-active-map (kbd "C-p") 'company-select-previous)
     (define-key company-active-map [escape] 'company-abort)
     (dotimes (i 10)
       (define-key company-active-map
         (read-kbd-macro (format "s-%d" i)) 'company-complete-number))))

(global-set-key (kbd "s-i") 'company-complete)
(global-unset-key (kbd "C-SPC"))
(global-set-key (kbd "C-SPC") 'company-complete)
(global-set-key (kbd "M-<tab>") 'company-complete-common)
