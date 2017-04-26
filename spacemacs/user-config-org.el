(with-eval-after-load 'org-agenda
  (require 'org-projectile)
  (push (org-projectile:todo-files) org-agenda-files))

(provide 'user-config-org)
