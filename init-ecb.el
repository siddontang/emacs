(add-to-list 'load-path
	     "~/.emacs.d/site-lisp/cedet/ede")
(add-to-list 'load-path
	     "~/.emacs.d/site-lisp/cedet/eieio")
(add-to-list 'load-path
	     "~/.emacs.d/site-lisp/cedet/semantic")
(add-to-list 'load-path
	     "~/.emacs.d/site-lisp/cedet/srecode")

(load-file "~/.emacs.d/site-lisp/cedet/common/cedet.el")
(global-ede-mode 1)                      ; Enable the Project management system
(semantic-load-enable-code-helpers)      ; Enable prototype help and smart completion
(global-srecode-minor-mode 1)            ; Enable template insertion menu


(add-to-list 'load-path
	     "~/.emacs.d/site-lisp/ecb")

(require 'ecb)

(setq ecb-auto-activate t)
(setq ecb-tip-of-the-day nil)

(setq ecb-layout-window-sizes nil)
(setq ecb-options-version "2.40")
(setq ecb-auto-compatibility-check nil)
(setq ecb-version-check nil)

(setq ecb-layout-name "left3")
(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(ecb-layout-window-sizes (quote (("left3" (0.15425531914893617 . 0.2727272727272727) (0.15425531914893617 . 0.32727272727272727) (0.15425531914893617 . 0.34545454545454546))))))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )


;;;; window move
(global-set-key [M-left] 'windmove-left)
(global-set-key [M-right] 'windmove-right)
(global-set-key [M-up] 'windmove-up)
(global-set-key [M-down] 'windmove-down)
 
;;;; show or hide window
(define-key global-map [(control f1)] 'ecb-hide-ecb-windows)
(define-key global-map [(control f2)] 'ecb-show-ecb-windows)
 
;;;; maxmize a windows
(define-key global-map "\C-c1" 'ecb-maximize-window-directories)
(define-key global-map "\C-c2" 'ecb-maximize-window-sources)
(define-key global-map "\C-c3" 'ecb-maximize-window-methods)
(define-key global-map "\C-c4" 'ecb-maximize-window-history)

;;;; restore
(define-key global-map "\C-c0" 'ecb-restore-default-window-sizes)

(provide 'init-ecb)