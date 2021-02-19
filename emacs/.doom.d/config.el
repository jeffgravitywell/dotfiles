;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-
;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!


;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets.
(setq user-full-name "Jeff Hunsberger"
      user-mail-address "jeffhunsberger@fastmail.fm")

;; Doom exposes five (optional) variables for controlling fonts in Doom. Here
;; are the three important ones:
;;
;; + `doom-font'
;; + `doom-variable-pitch-font'
;; + `doom-big-font' -- used for `doom-big-font-mode'; use this for
;;   presentations or streaming.
;;
;; They all accept either a font-spec, font string ("Input Mono-12"), or xlfd
;; font string. You generally only need these two:
;; (setq doom-font (font-spec :family "monospace" :size 12 :weight 'semi-light)
;;       doom-variable-pitch-font (font-spec :family "sans" :size 13))

;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. This is the default:
(setq doom-theme 'doom-gruvbox)

(setq doom-font
      (font-spec :family "Input Mono Narrow" :size 12 :style 'regular))

;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
(setq org-directory "~/Sync/org")

;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
(setq display-line-numbers-type 'relative)

;; (setq org-capture-templates
;;      '(("t" "Todo" entry (file+headline "~/org/inbox.org" "Tasks")
;;         "* TODO %?\n  %i\n  %a")
;;        ("j" "Journal" entry (file+datetree "~/org/journal.org")
;;         "* %?\nEntered on %U\n  %i\n  %a")))
;;
;;(set q org-capture-templates
;;     '(("t" "New Entry" entry (file "inbox.org")
;;        "* TODO %?")
;;       ("T" "Task" entry (file+headline "work.org" "work tasks")
;;        "* TODO %?")))
;;
;; Here are some additional functions/macros that could help you configure Doom:
;;
;; - `load!' for loading external *.el files relative to this one
;; - `use-package!' for configuring packages
;; - `after!' for running code after a package has loaded
;; - `add-load-path!' for adding directories to the `load-path', relative to
;;   this file. Emacs searches the `load-path' when you load packages with
;;   `require' or `use-package'.
;; - `map!' for binding new keys
;;
;; To get information about any of these functions/macros, move the cursor over
;; the highlighted symbol at press 'K' (non-evil users must press 'C-c c k').
;; This will open documentation for it, including demos of how they are used.

;; Change default prefix key; needs to be set before loading org-journal
(setq org-journal-file-type 'monthly)
(setq org-journal-dir "~/Sync/org/journal/"
      org-journal-date-format "%A, %d %B %Y")

;; You can also try 'gd' (or 'C-c c d') to jump to their definition and see how
;; they are implemented.
(setq org-agenda-custom-commands
      '(("f" "Forecast"
         ((agenda "")
          (tags-todo "flagged|next")))
        ))

;; tab controls like in VIM
(define-key evil-normal-state-map (kbd "g t") 'centaur-tabs-forward)
(define-key evil-normal-state-map (kbd "g T") 'centaur-tabs-backward)

;; saves buffers containing things like vim macros
;; written by Henrik in doom emacs discord
(after! savehist
  (add-to-list 'savehist-additional-variables 'register-alist)
  (add-hook! 'savehist-save-hook
    (defun doom-clean-up-registers-h ()
     
