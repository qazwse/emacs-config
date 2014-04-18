;;; Curtis Rasmussen init.el
;;; Using org files to create a literate Emacs configuration

(defun load-org (module)
  "Load configuration from a .org file. Use this to reload changes made to config."
  (org-babel-load-file (expand-file-name module home-dir)))

(add-hook 'after-init-hook
 `(lambda ()
    (require 'org)
    ;; load up the starter kit
    (setq home-dir "~/.emacs.d/")
    (load-org "curtis.org")))

