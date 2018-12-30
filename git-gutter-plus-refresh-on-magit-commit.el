;;; git-gutter-plus-refresh-on-magit-commit.el --- Refresh git-gutter+ on open-buffers after interactive magit-commit -*- lexical-binding: t; -*-
;;
;;; Copyright (C) 2018  Free Software Foundation, Inc.
;;
;; Author: Eric Crosson <eric.s.crosson@utexas.com>
;; Version: 0.0.1
;; Keywords: convenience
;; URL: https://github.com/EricCrosson/git-gutter-plus-refresh-on-magit-commit
;; Package-Requires: ((emacs "24") (projectile "1.0.0") (magit "2.1.0") (git-gutter+ "0.4"))
;;
;; This file is not a part of GNU Emacs.
;;
;;
;; This file is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation; either version 2, or (at your option)
;; any later version.
;;
;; This file is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.
;;
;; You should have received a copy of the GNU General Public License
;; along with GNU Emacs; see the file COPYING.  If not, write to
;; the Free Software Foundation, Inc., 59 Temple Place - Suite 330,
;; Boston, MA 02111-1307, USA.
;;
;;
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

;;; Code:


;;;###autoload
(defun git-gutter+-refresh-all-saved-buffers ()
  "Refresh git-gutter+ on open project-buffers.

This function is called automatically by `git-commit-post-finish-hook'."
  (interactive)
  (let ((project-files (projectile-current-project-files)))
    (dolist (file-to-refresh project-files)
      (let ((buffer (get-file-buffer (concat (projectile-project-root) file-to-refresh))))
        (when buffer
          (message "Refreshing git-gutter+ in buffer '%s'" buffer)
          (with-current-buffer buffer
            (git-gutter+-refresh)))))))

(add-hook 'git-commit-post-finish-hook 'git-gutter+-refresh-all-saved-buffers)


(provide 'git-gutter-plus-refresh-on-magit-commit)

;;; git-gutter-plus-refresh-on-magit-commit.el ends here
