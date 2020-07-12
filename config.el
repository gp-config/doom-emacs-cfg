;;; .doom.d/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here

(setq highlight-indent-guides-auto-enabled nil)
(setq display-line-numbers-type nil)

(after! projectile
    (add-to-list 'projectile-globally-ignored-directories "node_modules"))

;;
;;;;; Text

;; (setq doom-font (font-spec :family "Source Code Variable" :size 16)
;;       doom-variable-pitch-font (font-spec :family "Source Code Variable" :size 16))

;; (setq doom-font (font-spec :family "JetBrains Mono" :size 16)
;;       doom-variable-pitch-font (font-spec :family "JetBrains Mono" :size 16))

;; elixir font
(setq doom-font (font-spec :family "Dank Mono" :size 16)
      doom-variable-pitch-font (font-spec :family "Dank Mono" :size 16))

(setq-default line-spacing 0.2)

(load-theme 'doom-nord-light)

;;
;;;;; Keybinds

;; change leader key
;; (setq doom-leader-key ",")
;; remap 'enter normal mode'
(setq evil-escape-key-sequence "kj")

(map!
      :n "C-p" #'+ivy/projectile-find-file ;; enable when using ivy
      ;; :n "C-p" #'+helm/projectile-find-file ;; enable when using helm

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

      ;; Treemacs
      (:map evil-treemacs-state-map
        :i "C-h" #'evil-window-left
        :i "C-j" #'evil-window-down
        :i "C-k" #'evil-window-up
        :i "C-l" #'evil-window-right
        :n "C-h" #'evil-window-left
        :n "C-j" #'evil-window-down
        :n "C-k" #'evil-window-up
        :n "C-l" #'evil-window-right)

      ;; Leader binds

      :leader "c" #'kill-current-buffer
      :leader "q" #'evil-next-buffer
      :leader "z" #'evil-prev-buffer
      :leader ":" #'eval-expression
      :leader ";" #'counsel-M-x
      :leader "/ /" #'counsel-grep-or-swiper
      :leader "? ?" #'counsel-grep-or-swiper-backward
      :leader "t t" #'+treemacs/toggle)
