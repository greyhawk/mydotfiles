;; 显示行号
(global-linum-mode 0)
;; 自动备份
(setq backup-directory-alist `(("." . "~/.saves")))
(setq backup-by-copying t)
(setq delete-old-versions t
      kept-new-versions 3
      kept-old-versions 2
      version-control t)
;; 关闭临时文件
(setq auto-save-default nil)

(require 'cask "/usr/local/opt/cask/cask.el")
(cask-initialize)

(require 'pallet)
(pallet-mode t)

(require 'evil)
(evil-mode 1)

(load-theme 'solarized t)
(set-terminal-parameter nil 'background-mode 'dark)
(enable-theme 'solarized)

(add-hook 'after-init-hook (lambda ()
			      (require 'edts-start)))


(add-hook 'after-init-hook 'global-company-mode)

(add-hook 'js-mode-hook (lambda () (term-mode t)))
(eval-after-load 'tern
  '(progn
     (require 'tern-auto-complete)
     (tern-ac-setup)))
