(require 'cask "/usr/local/opt/cask/cask.el")
(cask-initialize)

(require 'pallet)
(pallet-mode t)

(require 'evil)
(evil-mode 1)

(require 'dockerfile-mode)

(require 'popwin)
(popwin-mode t)

(require 'editorconfig)
(editorconfig-mode 1)

(ivy-mode 1)
(setq ivy-use-virtual-buffers t)

(smartparens-global-mode t)

(add-hook 'after-init-hook (lambda ()
			     (require 'edts-start)))

(add-hook 'after-init-hook 'global-company-mode)

(add-hook 'elixir-mode-hook (lambda () (alchemist-mode t)))

(add-hook 'js-mode-hook (lambda () (tern-mode t)))

(with-eval-after-load 'company 
		      (add-to-list 'company-backends 'company-tern))

(provide 'init-packages)
