# git-gutter-plus-refresh-on-magit-commit [![Build Status](https://travis-ci.org/EricCrosson/git-gutter-plus-refresh-on-magit-commit.svg?branch=master)](https://travis-ci.org/EricCrosson/git-gutter-plus-refresh-on-magit-commit) [![Version](https://img.shields.io/github/tag/EricCrosson/git-gutter-plus-refresh-on-magit-commit.svg)](https://github.com/EricCrosson/git-gutter-plus-refresh-on-magit-commit/releases)

> Refresh git-gutter+ on open-buffers after interactive magit-commit

## Install

With [Quelpa](https://framagit.org/steckerhalter/quelpa)

``` {.sourceCode .lisp}
(use-package git-gutter-plus-refresh-on-magit-commit
  :quelpa (git-gutter-plus-refresh-on-magit-commit
           :fetcher github
           :repo "EricCrosson/git-gutter-plus-refresh-on-magit-commit"))
```

Or manually, after downloading into your `load-path`

``` {.sourceCode .lisp}
(require 'git-gutter-plus-refresh-on-magit-commit)
```

## Commentary

``` {.sourceCode .lisp}
;;; Commentary:
;;
;; This package provides a hack to refresh git-gutter+ in open
;; project-buffers after an interactive commit via magit.
;;
;; This behavior appears to have been supported by git-gutter+ at some
;; time, but the project has not seen active development in some time and it is possible
;; that a more-recent version of magit broke this functionality.
;;
;; As such, this code does not belong here but rather pushed upstream.
;; It is my intent to push this code upstream after some additional
;; optimizations are derived for performance.
;;
;; Thanks for your understanding, patience and help making it so!
```

## License

GPL 2 (or higher) © [Free Software Foundation, Inc](http://www.fsf.org/about).
