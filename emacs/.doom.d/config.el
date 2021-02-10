;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!


;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets.
(setq user-full-name "John Doe"
      user-mail-address "john@doe.com")

;; Doom exposes five (optional) variables for controlling fonts in Doom. Here
;; are the three important ones:
;;
;; + `doom-font'
;; + `doom-variable-pitch-font'
;; + `doom-big-font' -- used for `doom-big-font-mode'; use this for
;;   presentations or streaming.
;;
(setq doom-font
      (font-spec :family "Input Mono Narrow" :size 12 :style 'regular))

;; They all accept either a font-spec, font string ("Input Mono-12"), or xlfd
;; font string. You generally only need these two:
;; (setq doom-font (font-spec :family "monospace" :size 12 :weight 'semi-light)
;;       doom-variable-pitch-font (font-spec :family "sans" :size 13))

;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. This is the default:
;; (setq doom-theme 'doom-one)

(setq doom-theme 'gruvbox-dark-medium)


;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
(setq org-directory "~/Dropbox/org/")

;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
(setq display-line-numbers-type 'relative)

(display-battery-mode 1)

(after! org
  (setq org-capture-templates
        '(("t" "New entry" entry (file "inbox.org")
           "* TODO %?")
          ("T" "Task" entry (file+headline "home.org" "HOME SINGLE ACTION")
           "* TODO %?")
          ("r" "Reading" entry (file "reading.org")
           "* TODO %x"
           :immediate-finish t)
          ("w" "Watching" entry (file "watching.org")
           "* TODO %x"
           :immediate-finish t))))

(map! :leader
      :desc "Org Capture"           "x" #'org-capture
      :desc "Pop up scratch buffer" "X" #'doom/open-scratch-buffer)


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
;;
;; You can also try 'gd' (or 'C-c c d') to jump to their definition and see how
;; they are implemented.
(setq org-agenda-custom-commands
      '(("f" "Forecast"
         ((agenda "")
          (tags-todo "flagged|next")
        ))))

  ;; Change default prefix key; needs to be set before loading org-journal
  (setq org-journal-file-type 'monthly)
  (setq org-journal-dir "~/Dropbox/org/journal/"
        org-journal-date-format "%A, %d %B %Y")

;; (use-package! org-super-agenda
;;   :after org-agenda
;;   :init
;;   (setq org-agenda-skip-scheduled-if-done t
;;       org-agenda-skip-deadline-if-done t
;;       org-agenda-include-deadlines t
;;       org-agenda-block-separator nil
;;       org-agenda-compact-blocks t
;;       org-agenda-start-day nil ;; i.e. today
;;       org-agenda-span 1
;;       org-agenda-start-on-weekday nil)
;;   (setq org-agenda-custom-commands
;;         '(("c" "Super view"
;;            ((agenda "" ((org-agenda-overriding-header "")
;;                         (org-super-agenda-groups
;;                          '((:name "Today"
;;                                   :time-grid t
;;                                   :date today
;;                                   :order 1)))))
;;             (alltodo "" ((org-agenda-overriding-header "")
;;                          (org-super-agenda-groups
;;                           '((:log t)
;;                             (:name "To refile"
;;                                    :file-path "refile\\.org")
;;                             (:name "Next to do"
;;                                    :todo "NEXT"
;;                                    :order 1)
;;                             (:name "Important"
;;                                    :priority "A"
;;                                    :order 6)
;;                             (:name "Today's tasks"
;;                                    :file-path "/mnt/d/Dropbox/org/home.org")
;;                             (:name "Due Today"
;;                                    :deadline today
;;                                    :order 2)
;;                             (:name "Scheduled Soon"
;;                                    :scheduled future
;;                                    :order 8)
;;                             (:name "Overdue"
;;                                    :deadline past
;;                                    :order 7)
;; g                           (:name "Meetings"
;;                                    :and (:todo "MEET" :scheduled future)
;;                                    :order 10)
;;                             (:discard (:not (:todo "TODO")))))))))))
;;   :config
; (org-super-agenda-mode))
;;
(map! :leader
      (:prefix ("j" . "journal") ;; org-journal bindings
        :desc "Create new journal entry" "j" #'org-journal-new-entry
        :desc "Open previous entry" "p" #'org-journal-open-previous-entry
        :desc "Open next entry" "n" #'org-journal-open-next-entry
        :desc "Search journal" "s" #'org-journal-search-forever))

;; The built-in calendar mode mappings for org-journal
;; conflict with evil bindings
(map!
 (:map calendar-mode-map
   :n "o" #'org-journal-display-entry
   :n "p" #'org-journal-previous-entry
   :n "n" #'org-journal-next-entry
   :n "O" #'org-journal-new-date-entry))

;; Local leader (<SPC m>) bindings for org-journal in calendar-mode
;; I was running out of bindings, and these are used less frequently
;; so it is convenient to have them under the local leader prefix
(map!
 :map (calendar-mode-map)
 :localleader
 "w" #'org-journal-search-calendar-week
 "m" #'org-journal-search-calendar-month
 "y" #'org-journal-search-calendar-year)

(define-key evil-normal-state-map (kbd "g t") 'centaur-tabs-forward)
(define-key evil-normal-state-map (kbd "g T") 'centaur-tabs-backward)
