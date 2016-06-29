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
