;; Builds the website via ox-export

;; imports
(require 'ox-publish)

;; configuration

(setq org-publish-project-alist
      '(
	("pages"
         :base-directory "src/"
         :base-extension "org"
         :recursive t
	 :with-author nil
	 :with-date nil
	 :with-toc nil
	 :section-numbers nil
         :publishing-directory "docs/"
         :publishing-function org-html-publish-to-html)

        ("static"
         :base-directory "src/"
         :base-extension "css\\|js\\|jpg\\|gif\\|png"
         :recursive t
         :publishing-directory  "docs/"
         :publishing-function org-publish-attachment)

	))

(setq org-html-validation-link nil            ;; Don't show validation link
      org-html-head-include-scripts nil       ;; Use our own scripts
      org-html-head-include-default-style nil ;; Use our own styles
      org-html-head "<link rel=\"stylesheet\" href=\"https://cdn.simplecss.org/simple.min.css\" />")

;; execution
(org-publish-all t)

(message "Site built at ./docs/")
