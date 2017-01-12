(require 'cask "/usr/local/opt/cask/cask.el")
(cask-initialize)

(require 'pallet)
(pallet-mode t)

(require 'powerline)
(powerline-center-evil-theme)

(global-evil-leader-mode)
(evil-leader/set-key
  "ff" 'find-file
  "fr" 'recentf-open-files
  "bb" 'switch-to-buffer
  "bk" 'kill-buffer
  "pf" 'counsel-git
  "ps" 'helm-do-ag-project-root
  ":" 'counsel-M-x
  "0" 'select-window-0
  "1" 'select-window-1
  "2" 'select-window-2
  "3" 'select-window-3
  "w/" 'split-window-right
  "w-" 'split-window-below
  "wM" 'delete-other-windows
  )
(require 'evil)
(evil-mode 1)
(setcdr evil-insert-state-map nil)
(define-key evil-insert-state-map [escape] 'evil-normal-state)

(require 'evil-surround)
(global-evil-surround-mode 1)

(require 'dockerfile-mode)

(require 'popwin)
(popwin-mode t)

(require 'editorconfig)
(editorconfig-mode 1)

(require 'py-autopep8)

(require 'ein)

(require 'org-pomodoro)

(window-numbering-mode 1)

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

;; use flycheck not flymake with elpy
(when (require 'flycheck nil t)
  (setq elpy-modules (delq 'elpy-module-flymake elpy-modules))
  (add-hook 'elpy-mode-hook 'flycheck-mode))

(add-hook 'elpy-mode-hook 'py-autopep8-enable-on-save)
(add-hook 'elpy-mode-hook (lambda () 
			    (elpy-use-ipython "ipython3") 
			    (setq python-shell-interpreter "ipython3" python-shell-interpreter-args "--simple-prompt --pprint")))

(with-eval-after-load 'company 
		      (add-to-list 'company-backends 'company-tern))

(provide 'init-packages)
