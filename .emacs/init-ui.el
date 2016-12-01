(global-hl-line-mode t)
(menu-bar-mode -1)
(global-linum-mode t)
(tool-bar-mode -1)

(load-theme 'solarized t)
(add-hook 'after-make-frame-functions
	  (lambda (frame)
	    (let ((mode (if (display-graphic-p frame) 'light 'dark)))
	      (set-frame-parameter frame 'background-mode mode)
	      (set-terminal-parameter frame 'background-mode mode))
	    (enable-theme 'solarized)))

(provide 'init-ui)
