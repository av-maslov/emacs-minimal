;;
(setq basedir1 "C:/MyTemp/_GITLOCAL/stat-learning.github.io/p/")

(setq org-publish-project-alist
      '(("org"
	 :base-directory "C:/MyTemp/_GITLOCAL/stat-learning.github.io/p/"
	 :publishing-directory (concat basedir "public_html/")
	 :publishing-function org-html-publish-to-html
	 :section-numbers nil
	 :with-toc nil
	 :html-head "<link rel=\"stylesheet\"
                         href=\"../other/mystyle.css\"
                         type=\"text/css\"/>")))
(setq debug-on-error t)

;;(file-name-as-directory basedir1)
