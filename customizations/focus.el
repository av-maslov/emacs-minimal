;; Insert focus item 
(defun it ()
  (interactive)
  (insert(concat "* " (format-time-string "%Y-%m-%d")))
  (insert
"

| LA              | [ ] * 0 |
| Thesis / Papers | [ ] * 0 |
| Read Papers     | [ ] * 0 |

- One Haskell task
- ML lib: 5-10 min
"))
