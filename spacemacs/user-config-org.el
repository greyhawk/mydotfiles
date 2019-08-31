(with-eval-after-load 'org-agenda
  (require 'org-projectile)
  (push (org-projectile:todo-files) org-agenda-files))

(setq org-confirm-babel-evaluate nil
      org-src-fontify-natively t
      org-src-tab-acts-natively t)
(org-babel-do-load-languages
 'org-babel-load-languages
 '(
   (C             . t)
   (js            . t)
   (dot           . t)
   (python        . t)
   (plantuml      . t)
   (scheme        . t)
   (emacs-lisp    . t)))

(add-hook 'doc-view-mode-hook 'auto-revert-mode)
(provide 'user-config-org)
