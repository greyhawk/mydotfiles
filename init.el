;; 显示行号
(global-linum-mode 0)
;; 关闭自动备份
(setq make-back-files nil)

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
