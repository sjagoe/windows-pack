;; FIXME: Shoudl powershell-mode be in its own pack?
(live-add-pack-lib "powershell-mode")

(require 'powershell-mode)
(setq auto-mode-alist
      (append '(("\\.ps1$" . powershell-mode)) auto-mode-alist))


(setq this-is-w32
      (or (eq window-system 'w32)
          (equal (string-match "^[A-Za-z]:[/\\]" default-directory) 0)))


(when this-is-w32
  (live-load-config-file "windows-path-config.el")

  (require 'tramp)
  (setq tramp-auto-save-directory "c:\\dev\\tmp")
  (setq tramp-default-method "plink")

  ;; FIXME: Really in Windows config?
  (setq ediff-split-window-function 'split-window-horizontally)

  (set-default buffer-file-coding-system 'iso-latin-1-unix)
  (set-default-coding-systems 'iso-latin-1-unix)
  (prefer-coding-system 'iso-latin-1-unix)
  (set-default default-buffer-file-coding-system 'iso-latin-1-unix)
  (live-set-default-font "Dejavu Sans Mono 11"))
