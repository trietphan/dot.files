(require 'package)
(setq package-enable-at-startup nil)
(add-to-list 'package-archives
	     '("melpa" . "http://melpa.milkbox.net/packages/") t)
(package-initialize)

; list the packages you want
(setq my-package '(yasnippet py-autopep8 flycheck golden-ratio web-mode emmet-mode autopair comment-dwim-2 smex swiper
                   smart-mode-line projectile))

; fetch the list of packages available 
(unless package-archive-contents
  (package-refresh-contents))

; install the missing packages
(dolist (package my-package)
  (unless (package-installed-p package)
    (package-install package)))

;; Package: yasnippet
(require 'yasnippet)
(yas-global-mode 1)

;;Indention
(setq tab-width 2
      indent-tabs-mode nil)
(setq-default indent-tabs-mode nil)
(global-set-key (kbd "RET") 'newline-and-indent)

;;Yes and No
(defalias 'yes-or-no-p 'y-or-n-p)

(setq inhibit-startup-message t) ;; hide the startup message
;; (load-theme 'monokai t) ;; load material theme
(load-theme 'tango-edited t)
(global-linum-mode t) ;; enable line numbers globally

;;Flycheck mode supports realtime syntax checking
(when (require 'flycheck nil t))

;; (setq powerline-default-separator-dir 'right)
(setq sml/no-confirm-load-theme t)
(setq sml/theme 'dark)
(setq powerline-arrow-shape 'arrow)
(sml/setup)

;;Golden Ratio
(require 'golden-ratio)
(add-to-list 'golden-ratio-exclude-modes "ediff-mode")
(add-to-list 'golden-ratio-exclude-modes "dired-mode")
(add-to-list 'golden-ratio-inhibit-functions 'pl/helm-alive-p)

(defun pl/helm-alive-p ()
  (if (boundp 'helm-alive-p)
      (symbol-value 'helm-alive-p)))

;; do not enable golden-raio in thses modes
(setq golden-ratio-exclude-modes '("ediff-mode"
                                   "gud-mode"
                                   "gdb-locals-mode"
                                   "gdb-registers-mode"
                                   "gdb-breakpoints-mode"
                                   "gdb-threads-mode"
                                   "gdb-frames-mode"
                                   "gdb-inferior-io-mode"
                                   "gud-mode"
                                   "gdb-inferior-io-mode"
                                   "gdb-disassembly-mode"
                                   "gdb-memory-mode"
                                   "magit-log-mode"
                                   "magit-reflog-mode"
                                   "magit-status-mode"
                                   "IELM"
                                   "eshell-mode" "dired-mode"))
(golden-ratio-mode)

;;Jump Char
(global-set-key (kbd "C-c SPC") 'ace-jump-char-mode)

;;Web mode
(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.phtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.tpl\\.php\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.[agj]sp\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.as[cp]x\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.mustache\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.djhtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.jsp\\'" . web-mode))
(setq web-mode-enable-current-element-highlight t)
(setq web-mode-enable-auto-pairing t)
(setq web-mode-enable-current-column-highlight t)
;; everything is indented 2 spaces
(setq web-mode-markup-indent-offset 2)
(setq web-mode-css-indent-offset 2)
(setq web-mode-code-indent-offset 2)

;;Emmet Mode
(require 'emmet-mode)
(add-hook 'web-mode-hook 'emmet-mode)

;;Autopair
(require 'autopair)
(autopair-global-mode) ;; enable autopair in all buffers

;;Comment
(require 'comment-dwim-2)
(global-set-key (kbd "M-;") 'comment-dwim-2)

(ido-mode -1)

;; Ivy mode
(ivy-mode 1)
(setq ivy-use-virtual-buffers t)
(global-set-key (kbd "C-s") 'swiper)

;; Projectile Mode
(projectile-global-mode)

;; Initialize tern and tern-auto-complete
(add-hook 'js-mode-hook (lambda () (tern-mode t)))
(eval-after-load 'tern
  '(progn
     (require 'tern-auto-complete)
     (tern-ac-setup)))

(require 'smex) ; Not needed if you use package.el
(smex-initialize) ; Can be omitted. This might cause a (minimal) delay
                  ; when Smex is auto-initialized on its first run.

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(web-mode-current-element-highlight-face ((t (:background "#ff6119" :underline "#00CC43"))))
 '(web-mode-html-tag-face ((t (:foreground "#fff329")))))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("bffa9739ce0752a37d9b1eee78fc00ba159748f50dc328af4be661484848e476" default)))
 '(package-selected-packages
   (quote
    (auctex web-mode undo-tree tern-auto-complete tangotango-theme spacemacs-theme smex smart-mode-line-powerline-theme skewer-mode rainbow-mode py-autopep8 projectile monokai-theme material-theme magit jedi golden-ratio flycheck elpy comment-dwim-2 better-defaults autopair angular-snippets ace-jump-mode ac-html-angular ac-html ac-helm ac-emmet))))
