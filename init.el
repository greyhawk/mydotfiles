;; 显示行号
(global-linum-mode 0)
;; 自动备份
(setq backup-directory-alist `(("." . "~/.saves")))
(setq backup-by-copying t)
(setq delete-old-versions t
      kept-new-versions 3
      kept-old-versions 2
      version-control t)
;; 关闭自动保存

(require 'cask "/usr/local/opt/cask/cask.el")
(cask-initialize)

(require 'pallet)
(pallet-mode t)

(add-hook
 'after-init-hook (
		   lambda ()
			  (require 'evil)
			  (evil-mode 1)
			  (load-theme 'solarized t)
			  (set-terminal-parameter nil 'background-mode 'dark)
			  (enable-theme 'solarized)
			  (require 'edts-start)))

(add-hook 'after-init-hook 'global-company-mode)
