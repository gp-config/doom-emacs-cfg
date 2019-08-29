;;; .doom.d/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here


;;
;;;;; Keybinds

;; change leader key
(setq doom-leader-key ",")
;; remap 'enter normal mode'
(setq evil-escape-key-sequence "kj")

(map! :n "C-h #'evil-window-left"
      :n "C-j #'evil-window-down"
      :n "C-k #'evil-window-up"
      :n "C-l #'evil-window-right"

      ;; (:map vterm-mode-map
      ;;   :i "C-h #'evil-window-left"
      ;;   :i "C-j #'evil-window-down"
      ;;   :i "C-k #'evil-window-up"
      ;;   :i "C-l #'evil-window-right")

      ;; (:map evil-treemacs-state-map
      ;;   :i "C-h #'evil-window-left"
      ;;   :i "C-j #'evil-window-down"
      ;;   :i "C-k #'evil-window-up"
      ;;   :i "C-l #'evil-window-right")
      )

      ;; :leader "q" "evil-next-buffer"
      ;; :leader "z" "evil-prev-buffer")
