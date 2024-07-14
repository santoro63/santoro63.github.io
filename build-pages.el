;; Builds the website via ox-export

;; imports
(require 'ox-publish)

;; configuration
(setq dest-dir "docs/")    ; where the output will be placed

(setq org-publish-project-alist
      '(
	("pages"
         :base-directory "src/"
         :base-extension "org"
         :recursive t
         :publishing-directory "docs/"
         :publishing-function org-html-publish-to-html)

        ("static"
         :base-directory "src/"
         :base-extension "css\\|js\\|jpg\\|gif\\|png"
         :recursive t
         :publishing-directory  "docs/"
         :publishing-function org-publish-attachment)

	))


;; execution
(org-publish-all t)

(message "Site built at ./docs/")
