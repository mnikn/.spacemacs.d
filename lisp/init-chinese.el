(require 'pyim-basedict)
(pyim-basedict-enable)

(add-to-list 'load-path (expand-file-name "insert-translated-name" "~/.spacemacs.d/site-lisp/"))
(require 'insert-translated-name)
(add-to-list 'load-path (expand-file-name "company-english-helper" "~/.spacemacs.d/site-lisp/"))
(require 'company-english-helper)

(provide 'init-chinese)
