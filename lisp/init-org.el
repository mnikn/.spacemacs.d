(setq-default
  org-default-notes-file "~/OneDrive/org/refile.org"
  org-agenda-files '("~/OneDrive/org/gtd.org" "~/OneDrive/org/activity.org")
  org-drawers '("PROPERTIES" "LOGBOOK")
  org-startup-indented t
  org-refile-use-outline-path 'file
  org-refile-targets '((org-agenda-files :level . 1))
  org-refile-allow-creating-parent-nodes 'confirm
  org-log-done 'time
  org-log-reschedule 'note
  org-log-into-drawer t
  ;; clock
  org-clock-out-when-done t
  org-clock-in-resume t
  org-clock-out-remove-zero-time-clocks t
  org-clock-persist t
  org-clock-into-drawer t
  org-clock-report-include-clocking-task t
  org-tag-alist '((:startgroup . nil)
                   ("TASK" . ?t)
                   ("METTING" . ?m)
                   ("WORK" . ?w)
                   ("PERSONAL" . ?p)
                   ("NOTE" . ?n))
  org-todo-keywords '((sequence "TODO(t)" "IN PREOGRESS(i!)" "|" "DONE(d!)")
                       (sequence "HOLD(h!)" "WAITING(w@/!)" "|" "CANCELED(c@/!)"))
  org-todo-keyword-faces  '(("TODO" :foreground "red" :weight bold)
                             ("IN PREOGRESS" :foreground "blue" :weight bold)
                             ("DONE" :foreground "forest green" :weight bold)
                             ("WAITING" :foreground "orange" :weight bold)
                             ("HOLD" :foreground "magenta" :weight bold)
                             ("CANCELED" :foreground "forest green" :weight bold))
  org-capture-templates '(("t" "Todo item" entry (file org-default-notes-file) "* TODO %?\n:PROPERTIES:\n:CREATED: %U\n:END:\n")
                           ("n" "Note" entry (file org-default-notes-file) "* %? %U\n")))

(provide 'init-org)
