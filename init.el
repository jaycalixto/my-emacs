;;; init.el --- Where all the magic begins

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
;; (package-initialize)

(require 'org)
(setq org-element-use-cache nil)
(org-babel-load-file
 (expand-file-name "emacs.org" user-emacs-directory))
;;; init.el ends here
