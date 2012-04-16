(setq make-backup-files nil) 
(global-font-lock-mode t)
(transient-mark-mode t)

(set-frame-font "-outline-Courier New-normal-normal-normal-mono-16-*-*-*-c-*-iso8859-1")

(server-start)

(autoload 'ansi-color-for-comint-mode-on "ansi-color" nil t) 
(add-hook 'shell-mode-hook 'ansi-color-for-comint-mode-on t) 

(windmove-default-keybindings)

(provide 'init-common)