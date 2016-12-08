;; 自动备份
(setq backup-directory-alist `(("." . "~/.saves")))
(setq backup-by-copying t)
(setq delete-old-versions t
      kept-new-versions 3
      kept-old-versions 2
      version-control t)

;; 关闭临时文件
(setq auto-save-default nil)

(global-auto-revert-mode t)

(recentf-mode 1)			
(setq recentf-max-menu-items 25)

(delete-selection-mode t)

(add-hook 'emacs-lisp-mode-hook 'show-paren-mode)

;; 定义缩写
(abbrev-mode t)
(define-abbrev-table 'global-abbrev-table '(
					    ;; Ging.Wu@coloseo.cn
					    ("GW" "ging.wu@coloseo.cn")
					    ))
;; 缩进函数
(defun indent-buffer ()
  "Indent the currently visited buffer."
  (interactive)
  (indent-region (point-min) (point-max)))

(defun indent-region-or-buffer()
  "Indent a region if selected, otherwise the whole buffer."
  (interactive)
  (save-excursion
    (if (region-active-p)
	(progn
	  (indent-region (region-beginning) (region-end))
	  (message "Indented selected region."))
      (progn
	(indent-buffer)
	(message "Indented buffer.")))))

;; 自动补全
(setq hippie-expand-try-function-list '(try-expand-debbrev
					try-expand-debbrev-all-buffers
					try-expand-debbrev-from-kill
					try-complete-file-name-partially
					try-complete-file-name
					try-expand-all-abbrevs
					try-expand-list
					try-expand-line
					try-complete-lisp-symbol-partially
					try-complete-lisp-symbol))

(fset 'yes-or-no-p 'y-or-n-p)

;; dired mode 设置
(require 'dired-x)
(setq dired-recursive-copies 'always)
(setq dired-recursive-deletes 'always)
(setq dired-dwim-target t)
(put 'dired-find-alternate-file 'disabled nil)

(provide 'init-better-defaults)
