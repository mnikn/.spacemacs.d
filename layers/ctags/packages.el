;;; packages.el --- ctags layer packages file for Spacemacs.
;;
;; Copyright (c) 2012-2017 Sylvain Benner & Contributors
;;
;; Author: 郑志昭 <zhengzhizhao@zhengzhizhaodeMacBook-Air.local>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

;;; Commentary:

;; See the Spacemacs documentation and FAQs for instructions on how to implement
;; a new layer:
;;
;;   SPC h SPC layers RET
;;
;;
;; Briefly, each package to be installed or configured by this layer should be
;; added to `ctags-packages'. Then, for each package PACKAGE:
;;
;; - If PACKAGE is not referenced by any other Spacemacs layer, define a
;;   function `ctags/init-PACKAGE' to load and initialize the package.

;; - Otherwise, PACKAGE is already referenced by another Spacemacs layer, so
;;   define the functions `ctags/pre-init-PACKAGE' and/or
;;   `ctags/post-init-PACKAGE' to customize the package as it is loaded.

;;; Code:

(defconst ctags-packages
  '(counsel-etags)
  )

(defun ctags/init-counsel-etags()
  (use-package counsel-etags
    :config
    (setq counsel-etags-update-interval 120
          tags-revert-without-query t
          large-file-warning-threshold nil)
    (add-to-list 'counsel-etags-ignore-directories "build")
    (add-to-list 'counsel-etags-ignore-filenames "TAGS")
    (add-to-list 'counsel-etags-ignore-filenames "*.json")))

;;; packages.el ends here
