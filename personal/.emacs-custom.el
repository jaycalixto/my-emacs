(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(bmkp-last-as-first-bookmark-file "~/.emacs.d/personal/bookmarks")
 '(canlock-password "4ce727964ab5d43ff3f962d824d92e80a6e9d99e")
 '(case-fold-search t)
 '(chm-view-delay 1.0)
 '(custom-safe-themes
   (quote
    ("ebf6314f5c7c71034ffe2d67db489c6d868be3cf8cdba02e5a936808c5df75c8" "81805c86e126018f339211bb3f03e1c9eae30adfbe72832bd02f89ca0cbe5885" "843a82ff3b91bec5430f9acdd11de03fc0f7874b15c1b6fbb965116b4c7bf830" default)))
 '(desktop-files-not-to-save "(ftp)")
 '(desktop-path (quote ("~/.emacs.d/" "~")))
 '(desktop-restore-forces-onscreen nil)
 '(ess-R-font-lock-keywords
   (quote
    ((ess-R-fl-keyword:modifiers . t)
     (ess-R-fl-keyword:fun-defs . t)
     (ess-R-fl-keyword:keywords . t)
     (ess-R-fl-keyword:assign-ops . t)
     (ess-R-fl-keyword:constants . t)
     (ess-fl-keyword:fun-calls . t)
     (ess-fl-keyword:numbers . t)
     (ess-fl-keyword:operators . t)
     (ess-fl-keyword:delimiters . t)
     (ess-fl-keyword:= . t)
     (ess-R-fl-keyword:F&T . t))))
 '(global-whitespace-mode t)
 '(inferior-R-font-lock-keywords
   (quote
    ((ess-S-fl-keyword:prompt . t)
     (ess-R-fl-keyword:modifiers . t)
     (ess-R-fl-keyword:fun-defs . t)
     (ess-R-fl-keyword:keywords . t)
     (ess-R-fl-keyword:assign-ops . t)
     (ess-R-fl-keyword:constants . t)
     (ess-R-fl-keyword:messages . t)
     (ess-fl-keyword:matrix-labels . t)
     (ess-fl-keyword:fun-calls . t)
     (ess-fl-keyword:numbers . t)
     (ess-fl-keyword:operators . t)
     (ess-fl-keyword:delimiters)
     (ess-fl-keyword:= . t)
     (ess-R-fl-keyword:F&T))))
 '(js-indent-level 2)
 '(js2-basic-offset 2)
 '(magit-pull-arguments nil)
 '(org-export-backends (quote (confluence ascii html icalendar latex md)))
 '(org-stuck-projects
   (quote
    ("project|epic|build|code|study/-DONE"
     ("TODO" "STARTED" "WAITING" "GROOMING" "READY" "INPROGRESS" "PR")
     ("NEXT" "FLAGGED")
     "")))
 '(safe-local-variable-values
   (quote
    ((Base . 10)
     (Syntax . Common-lisp)
     (Package . monitor)
     (eval ignore-errors "Write-contents-functions is a buffer-local alternative to before-save-hook"
	   (add-hook
	    (quote write-contents-functions)
	    (lambda nil
	      (delete-trailing-whitespace)
	      nil))
	   (require
	    (quote whitespace))
	   "Sometimes the mode needs to be toggled off and on."
	   (whitespace-mode 0)
	   (whitespace-mode 1))
     (whitespace-line-column . 80)
     (whitespace-style face trailing lines-tail)
     (require-final-newline . t))))
 '(send-mail-function (quote mailclient-send-it))
 '(sql-oracle-program "sqlplus64")
 '(whitespace-global-modes t)
 '(whitespace-line-column 1500))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(erc-direct-msg-face ((t (:foreground "orange"))))
 '(erc-input-face ((t (:foreground "green3"))))
 '(erc-nick-default-face ((t (:foreground "orangered2" :underline t :weight semi-bold))))
 '(erc-notice-face ((t (:foreground "dodgerblue" :weight semi-bold))))
 '(menu ((t (:inverse-video t))))
 '(mode-line ((t (:background "dark goldenrod" :foreground "midnight blue" :box (:line-width 3 :color "red" :style released-button)))))
 '(mode-line-buffer-id ((t nil)))
 '(whitespace-empty ((t (:foreground "dark red"))))
 '(whitespace-indentation ((t (:foreground "dark red"))))
 '(whitespace-line ((t (:background "gray5"))))
 '(whitespace-newline ((t (:foreground "gray10" :weight normal))))
 '(whitespace-space ((t (:foreground "gray10"))))
 '(whitespace-space-after-tab ((t (:background "gray6" :foreground "dark red"))))
 '(whitespace-space-before-tab ((t (:foreground "gray10"))))
 '(whitespace-tab ((t (:foreground "gray10"))))
 '(whitespace-trailing ((t (:foreground "dark red" :weight bold)))))
