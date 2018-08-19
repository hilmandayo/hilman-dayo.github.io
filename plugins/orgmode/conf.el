;; formatting how the html output (especially the RESULTS drawer)
(defun my-org-export-format-drawer (name content)
  ;; For some reasons, the `substring' needed to be used (to handle the <p> tag).
  ;; Could be because of the text properties stuff.
  (concat "<br><div class=\"highlight\"><pre><span></span><i>" (substring content 4 -5) "</i></pre></div>\n"
          "\n</div>"))
(setq org-html-format-drawer-function 'my-org-export-format-drawer)

;; Setting the HTML stuff. Refer https://emacs.stackexchange.com/questions/27691/org-mode-export-images-to-html-as-figures-not-img
(setq org-html-html5-fancy t
      org-html-doctype "html5")
