;;; .doom.d/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here

(setq highlight-indent-guides-auto-enabled nil)
(setq display-line-numbers-type nil)

;;
;;;;; Keybinds

;; change leader key
(setq doom-leader-key ",")
;; remap 'enter normal mode'
(setq evil-escape-key-sequence "kj")

(map! :n "C-p" #'+ivy/projectile-find-file

      ;; Moving between windows
      :n "C-h" #'evil-window-left
      :n "C-j" #'evil-window-down
      :n "C-k" #'evil-window-up
      :n "C-l" #'evil-window-right
      (:map vterm-mode-map
        :i "C-h" #'evil-window-left
        :i "C-j" #'evil-window-down
        :i "C-k" #'evil-window-up
        :i "C-l" #'evil-window-right)
      (:map evil-treemacs-state-map
        :i "C-h" #'evil-window-left
        :i "C-j" #'evil-window-down
        :i "C-k" #'evil-window-up
        :i "C-l" #'evil-window-right)

      ;; Leader binds

      :leader "q" #'evil-next-buffer
      :leader "z" #'evil-prev-buffer
      :leader ":" #'eval-expression
      :leader ";" #'counsel-M-x
      :leader "/ /" #'counsel-grep-or-swiper
      :leader "? ?" #'counsel-grep-or-swiper-backward)
