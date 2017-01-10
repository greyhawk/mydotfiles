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

(require 'py-autopep8)

(require 'ein)

(require 'org-pomodoro)

(ivy-mode 1)
(setq ivy-use-virtual-buffers t)

(smartparens-global-mode t)
(sp-local-pair '(emacs-lisp-mode lisp-interaction-mode) "'" nil :actions nil)

(elpy-enable)

(yas-reload-all)
(add-hook 'prog-mode-hook #'yas-minor-mode)

(add-hook 'after-init-hook (lambda ()
			     (require 'edts-start)))


(add-hook 'after-init-hook 'global-company-mode)

(add-hook 'elixir-mode-hook (lambda () (alchemist-mode t)))

(add-hook 'js-mode-hook (lambda ()
			  (tern-mode t)
			  (flycheck-mode)))

(add-hook 'elpy-mode-hook 'py-autopep8-enable-on-save)
(add-hook 'elpy-mode-hook (lambda () 
			    (elpy-use-ipython "ipython3") 
			    (setq python-shell-interpreter "ipython3" python-shell-interpreter-args "--simple-prompt --pprint")))

(with-eval-after-load 'company 
		      (add-to-list 'company-backends 'company-tern))

(provide 'init-packages)
