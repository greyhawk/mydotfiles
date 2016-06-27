(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(package-initialize)

(require 'evil)
(evil-mode 1)

(load-theme 'solarized t)
(set-terminal-parameter nil 'background-mode 'dark)
(enable-theme 'solarized)

(unless (package-installed-p 'elixir-mode)
    (package-install 'elixir-mode))

(unless (package-installed-p 'alchemist)
    (package-install 'alchemist))

(add-hook 'after-init-hook 'global-company-mode)
