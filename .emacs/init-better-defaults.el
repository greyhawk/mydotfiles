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

(provide 'init-better-defaults)
