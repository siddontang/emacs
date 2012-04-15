;; -*- coding: utf-8 -*-
(add-to-list 'load-path (expand-file-name "~/.emacs.d"))
(add-to-list 'load-path 
	     "~/.emacs.d/site-lisp")

(require 'init-common)
(require 'init-unicode)

(require 'init-flymake)

;;(require 'init-yasnippet)
;;(require 'init-auto-complete)

(require 'init-python-mode)
;;(require 'init-ecb)

(require 'init-asymptote)

(require 'init-abbrev)
(require 'init-skeleton)