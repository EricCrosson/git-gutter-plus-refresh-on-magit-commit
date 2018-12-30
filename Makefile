test:
	emacs --version
	emacs -nw --batch --eval '(load-file "git-gutter-plus-refresh-on-magit-commit.el")'
