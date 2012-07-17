(define-abbrev python-mode-abbrev-table "myheader" "" 'python-skeleton-file-header)
(define-abbrev python-mode-abbrev-table "ifmain" "" 'python-skeleton-ifmain)
(define-abbrev python-mode-abbrev-table "devheader" "" 'python-skeleton-devfile-header)

(define-skeleton python-skeleton-file-header
  "Insert a header for python file"
  nil
  "#coding:utf-8\n"
  "#tangliu@kingsoft.com\n")

(define-skeleton python-skeleton-ifmain
  "Insert main in python file"
  nil
  "if __name__ == '__main__':\n")


(define-skeleton python-skeleton-devfile-header
  "Insert a header for python file"
  nil
  "#coding:utf-8\n"
  "#siddontang@gmail.com\n")


(setq skeleton-end-hook nil)

(provide 'init-skeleton)