
(setq abbrev-file-name
      "~/.emacs.d/abbrev_defs")

(setq save-abbrevs t)

(quietly-read-abbrev-file)

(setq default-abbrev-mode t)

(provide 'init-abbrev)