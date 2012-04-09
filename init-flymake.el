(add-to-list 'load-path
	     "~/.emacs.d/site-lisp/flymake")

(require 'flymake)

(setq flymake-gui-warnings-enabled nil)

(add-to-list 'load-path
	     "~/.emacs.d/site-lisp")

;; Stop flymake from breaking when ruby-mode is invoked by mmm-mode,
;; at which point buffer-file-name is nil
(eval-after-load 'flymake
  '(progn
     (require 'flymake-cursor)

     (global-set-key (kbd "C-`") 'flymake-goto-next-error)

     (defun flymake-can-syntax-check-file (file-name)
       "Determine whether we can syntax check FILE-NAME.
Return nil if we cannot, non-nil if we can."
       (if (and file-name (flymake-get-init-function file-name)) t nil))))


;; http://nschum.de/src/emacs/fringe-helper/
(eval-after-load 'flymake
  '(progn
     (require 'fringe-helper)

     (defvar flymake-fringe-overlays nil)
     (make-variable-buffer-local 'flymake-fringe-overlays)

     (defadvice flymake-make-overlay (after add-to-fringe first
                                            (beg end tooltip-text face mouse-face)
                                            activate compile)
       (push (fringe-helper-insert-region
              beg end
              (fringe-lib-load (if (eq face 'flymake-errline)
                                   fringe-lib-exclamation-mark
                                 fringe-lib-question-mark))
              'left-fringe 'font-lock-warning-face)
             flymake-fringe-overlays))

     (defadvice flymake-delete-own-overlays (after remove-from-fringe activate
                                                   compile)
       (mapc 'fringe-helper-remove flymake-fringe-overlays)
       (setq flymake-fringe-overlays nil))))

(setq flymake-no-changes-timeout 600)

(global-set-key (kbd "<f11>") 'flymake-start-syntax-check)
(global-set-key (kbd "<f12>") 'flymake-stop-all-syntax-checks)

;; run 8 checks at once 
(setq flymake-max-parallel-syntax-checks 8)

;; I don't want no steekin' limits.
;;(setq flymake-max-parallel-syntax-checks nil)

;; Yes, I want my copies in the same dir as the original.
;;(setq flymake-run-in-place t)

;; Nope, I want my copies in the system temp dir.
(setq flymake-run-in-place nil)

;; This lets me say where my temp dir is.
(setq temporary-file-directory "~/.emacs.d/tmp/")

;; I want to see at most the first 4 errors for a line.
(setq flymake-number-of-errors-to-display 4)

;; I want to see all errors for the line.
;;(setq flymake-number-of-errors-to-display nil)



(provide 'init-flymake)