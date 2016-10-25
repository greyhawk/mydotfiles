;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

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
(menu-bar-mode -1)

(require 'cask "/usr/local/opt/cask/cask.el")
(cask-initialize)

(require 'pallet)
(pallet-mode t)

(require 'evil)
(evil-mode 1)

(require 'dockerfile-mode)

(require 'editorconfig)
(editorconfig-mode 1)

(load-theme 'solarized t)
(add-hook 'after-make-frame-functions
	  (lambda (frame)
	    (let ((mode (if (display-graphic-p frame) 'light 'dark)))
	      (set-frame-parameter frame 'background-mode mode)
	      (set-terminal-parameter frame 'background-mode mode))
	    (enable-theme 'solarized)))


(add-hook 'after-init-hook (lambda ()
			     (require 'edts-start)))

(add-hook 'after-init-hook 'global-company-mode)

(add-hook 'elixir-mode-hook (lambda () (alchemist-mode t)))

(add-hook 'js-mode-hook (lambda () (tern-mode t)))
(eval-after-load 'tern
		 '(progn
		    (require 'tern-auto-complete)
		    (tern-ac-setup))) 

(require 'auto-complete-config)
(ac-config-default)
(add-to-list 'ac-modes 'js-mode)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (jade-mode vue-mode tern tern-auto-complete pallet nginx-mode markdown-mode groovy-mode evil edts editorconfig dockerfile-mode color-theme-solarized alchemist))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
