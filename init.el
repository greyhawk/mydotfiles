;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

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
(global-linum-mode t)


;; 打开配置文件
(defun open-init-file ()
  (interactive)
  (find-file "~/.emacs.d/init.el"))
(global-set-key (kbd "<f2>") 'open-init-file)


(require 'cask "/usr/local/opt/cask/cask.el")
(cask-initialize)

(require 'pallet)
(pallet-mode t)

(require 'evil)
(evil-mode 1)

(require 'org)
(setq org-src-fontify-natively t)

(require 'dockerfile-mode)

(require 'editorconfig)
(editorconfig-mode 1)

(ivy-mode 1)
(setq ivy-use-virtual-buffers t)
(global-set-key "\C-s" 'swiper)
(global-set-key (kbd "C-c C-r") 'ivy-resume)
(global-set-key (kbd "M-x") 'counsel-M-x)
(global-set-key (kbd "C-x C-f") 'counsel-find-file)


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
    (counsel swiper jade-mode vue-mode tern tern-auto-complete pallet nginx-mode markdown-mode groovy-mode evil edts editorconfig dockerfile-mode color-theme-solarized alchemist))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
