;;; package -- Summary

;;; Commentary:
;; Remove anaconda backend from company backends.
;; Ad elpy support.

;;; Code:
(remove-hook 'python-mode-hook 'anaconda-mode)
(prelude-require-package 'elpy)
(setq company-backends (remove 'company-anaconda company-backends))
(elpy-enable)


;;; TODO: write a function for auto import the modules.

;;; TODO: bound flymake-next error to <leader> + n
;;; init-python.el ends here
