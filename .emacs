;; path where settings files are kept
;(global-linum-mode t)
(add-to-list 'load-path "~/.emacs.d/settings/")
;; path to where plugins are kept
(setq plugin-path "~/.emacs.d/el-get/")
;;path to el-get
(setq elget-path "~/.emacs.d/el-get")
(require 'custom-functions)

;; configure general settings
(require 'general-settings)



;---------------;
;;; Utilities ;;;
;---------------;
;;maxFrame when start

;; Git
(include-plugin "magit")
(include-plugin "dash")
(require 'magit)

;; Popup
(include-plugin "popup")
(require 'popup)

;; Websocket
;;(include-plugin "websocket")
;;(require 'websocket)

;; Request
;;(include-plugin "request")
;;(require 'request)

;; yasnippet
(include-plugin "yasnippet")
(require 'yasnippet-settings)

;; Auto complete
(include-plugin "auto-complete")
(require 'auto-complete-settings)
;; Camelcase functions
;;(require 'camelcase-settings)

;; Helm
(include-plugin "emacs-async")
(include-plugin "helm")
(require 'helm)
(require 'helm-config)
(helm-mode 1)
(global-set-key (kbd "C-x C-b")   'helm-buffers-list)

;; save desktop
(require 'desktop)
  (desktop-save-mode 1)
  (defun my-desktop-save ()
    (interactive)
    ;; Don't call desktop-save-in-desktop-dir, as it prints a message.
    (if (eq (desktop-owner) (emacs-pid))
        (desktop-save desktop-dirname)))
;(add-hook 'auto-save-hook 'my-desktop-save)


;-----------;
;;; Modes ;;;
;-----------;

;; Ido mode
(require 'ido)
(ido-mode 1)
(require 'flx-ido)
(ido-everywhere 1)
(flx-ido-mode 1)
;; disable ido faces to see flx highlights.
(setq ido-enable-flex-matching t)
(setq ido-use-faces nil)

;;support for python
(package-initialize)
(elpy-enable)


;; MuMaMo
;;(require 'mumamo-settings)

;; Markdown mode
;;(require 'markdown-settings)

;; Python mode 
;;(require 'python-settings)

;; LaTeX and Auctex
;;(require 'latex-settings)

;; SCSS Mode
;;(require 'scss-settings)

;; Matlab mode
;;(require 'matlab-settings)

;; Javascript
;;(require 'js-settings)

;; YAML mode
;;(require 'yaml-settings)

;; Nyancat mode!
;;(nyan-mode 1)


;---------------------------------------------------------------------
;; Put auto 'custom' changes in a separate file (this is stuff like
;; custom-set-faces and custom-set-variables)
(load 
 (setq custom-file (expand-file-name "settings/custom.el" user-emacs-directory))
 'noerror)
