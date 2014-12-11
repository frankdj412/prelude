;;; package -- Summary

;;; Commentary:
;; Remove anaconda backend from company backends.
;; Add elpy support.

;;; Code:
(prelude-require-package 'elpy)
(setq company-backends (remove 'company-anaconda company-backends))
(elpy-enable)

;;; init-python.el ends here
