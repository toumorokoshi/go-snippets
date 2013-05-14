;;; go-snippets.el --- Yasnippets for go

;; Author: Max Penet <m@qbits.cc>
;; Keywords: snippets
;; Version: 1.0.0
;; Package-Requires: ((yasnippet "0.8.0"))

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Code:

(setq go-snippets-dir (file-name-directory (or (buffer-file-name)
                                                load-file-name)))

;;;###autoload
(defun go-snippets-initialize ()
  (let ((snip-dir (expand-file-name "snippets" go-snippets-dir)))
    (add-to-list 'yas-snippet-dirs snip-dir t)
    (yas-load-directory snip-dir)))

;;;###autoload
(eval-after-load 'yasnippet
   '(go-snippets-initialize))

(require 'yasnippet)

(provide 'go-snippets)

;;; go-snippets.el ends here
