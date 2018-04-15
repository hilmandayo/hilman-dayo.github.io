;; formatting how the html output (especially the RESULTS drawer)
(defun my-org-export-format-drawer (name content)
  (append-to-file (concat name "\n" (substring content 4 -5) "\n") nil "~/Desktop/emacslog.txt")
  ;; For some reasons, the `substring' needed to be used (to handle the <p> tag).
  ;; Could be because of the text properties stuff.
  (concat "<br><div class=\"highlight\"><pre><span></span><i>" (substring content 4 -5) "</i></pre></div>\n"
          "\n</div>"))
(setq org-html-format-drawer-function 'my-org-export-format-drawer)
