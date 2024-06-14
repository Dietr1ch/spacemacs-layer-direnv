;;; packages.el --- direnv layer packages file for Spacemacs.
;;
;; Copyright (c) 2012-2024 Sylvain Benner & Contributors
;;
;; Author: Dietrich Daroch
;;
;; This file is not part of GNU Emacs.
;;
;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.
;;
;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.
;;
;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.



;; Briefly, each package to be installed or configured by this layer should be
;; added to `direnv-packages'.
(defconst direnv-packages
  '(
    direnv
    ))
;; Then, for each package PACKAGE:

;; - If PACKAGE is NOT referenced by any other Spacemacs layer, define a
;;   function `direnv/init-PACKAGE' to load and initialize the package.
(defun direnv/init-direnv ()
  (use-package direnv
    :config
    (spacemacs/declare-prefix "d" "direnv")
    (spacemacs/set-leader-keys "dd" 'direnv-update-environment)
    (spacemacs/set-leader-keys "dD" 'direnv-update-directory-environment)
    (spacemacs/set-leader-keys "de" 'direnv-edit)
    )
  )

;; - Otherwise, PACKAGE is already referenced by another Spacemacs layer, so
;;   define the functions `direnv/pre-init-PACKAGE' and/or
;;   `direnv/post-init-PACKAGE' to customize the package as it is loaded.
