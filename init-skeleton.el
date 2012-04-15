(define-abbrev python-mode-abbrev-table "myheader" "" 'python-skeleton-file-header)

(define-skeleton python-skeleton-file-header
  "Insert a header for python file"
  nil
  "#coding:utf-8\n"
  "#tangliu@kingsoft.com")

(setq skeleton-end-hook nil)

(provide 'init-skeleton)