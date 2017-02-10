(deftheme tango-edited
  "Created 2016-02-18.")

(custom-theme-set-faces
 'tango-edited
 '(cursor ((t (:foreground "#222222" :background "#fce94f"))))
 '(fixed-pitch ((t (:inherit (default)))))
 '(variable-pitch ((t (:family "Sans Serif"))))
 '(escape-glyph ((((background dark)) (:foreground "cyan")) (((type pc)) (:foreground "magenta")) (t (:foreground "brown"))))
 '(highlight ((t (:background "brown4"))))
 '(region ((t (:background "dark slate blue"))))
 '(shadow ((((class color grayscale) (min-colors 88) (background light)) (:foreground "grey50")) (((class color grayscale) (min-colors 88) (background dark)) (:foreground "grey70")) (((class color) (min-colors 8) (background light)) (:foreground "green")) (((class color) (min-colors 8) (background dark)) (:foreground "yellow"))))
 '(secondary-selection ((((class color) (min-colors 88) (background light)) (:background "yellow1")) (((class color) (min-colors 88) (background dark)) (:background "SkyBlue4")) (((class color) (min-colors 16) (background light)) (:background "yellow")) (((class color) (min-colors 16) (background dark)) (:background "SkyBlue4")) (((class color) (min-colors 8)) (:foreground "black" :background "cyan")) (t (:inverse-video t))))
 '(trailing-whitespace ((((class color) (background light)) (:background "red1")) (((class color) (background dark)) (:background "red1")) (t (:inverse-video t))))
 '(font-lock-builtin-face ((t (:foreground "#729fcf"))))
 '(font-lock-comment-face ((t (:foreground "#f5784f"))))
 '(font-lock-comment-delimiter-face ((t (:inherit font-lock-comment-face))))
 '(font-lock-constant-face ((t (:foreground "#8ae234"))))
 '(font-lock-doc-face ((t (:foreground "#888a85"))))
 '(font-lock-function-name-face ((t (:weight bold :foreground "#edd400"))))
 '(font-lock-keyword-face ((t (:weight bold :foreground "#729fcf"))))
 '(font-lock-negation-char-face ((t nil)))
 '(font-lock-preprocessor-face ((t (:inherit (font-lock-builtin-face)))))
 '(font-lock-regexp-grouping-backslash ((t (:inherit (bold)))))
 '(font-lock-regexp-grouping-construct ((t (:inherit (bold)))))
 '(font-lock-string-face ((t (:foreground "#00cc43" :slant italic))))
 '(font-lock-type-face ((t (:weight bold :foreground "#8ae234"))))
 '(font-lock-variable-name-face ((t (:foreground "tomato"))))
 '(font-lock-warning-face ((t (:weight bold :foreground "#f57900"))))
 '(button ((t (:inherit (link)))))
 '(link ((t (:foreground "dodger blue" :underline (:color foreground-color :style line)))))
 '(link-visited ((default (:inherit (link))) (((class color) (background light)) (:foreground "magenta4")) (((class color) (background dark)) (:foreground "violet"))))
 '(fringe ((t (:background "grey10"))))
 '(header-line ((default (:inherit (mode-line))) (((type tty)) (:underline (:color foreground-color :style line) :inverse-video nil)) (((class color grayscale) (background light)) (:box nil :foreground "grey20" :background "grey90")) (((class color grayscale) (background dark)) (:box nil :foreground "grey90" :background "grey20")) (((class mono) (background light)) (:underline (:color foreground-color :style line) :box nil :inverse-video nil :foreground "black" :background "white")) (((class mono) (background dark)) (:underline (:color foreground-color :style line) :box nil :inverse-video nil :foreground "white" :background "black"))))
 '(tooltip ((t (:background "lightyellow" :foreground "black" :inherit (quote variable-pitch)))))
 '(mode-line ((t (:box (:line-width 1 :color nil :style released-button) :background "#222222" :foreground "#bbbbbc"))))
 '(mode-line-buffer-id ((t (:weight bold :foreground "orange"))))
 '(mode-line-emphasis ((t (:weight bold))))
 '(mode-line-highlight ((((class color) (min-colors 88)) (:box (:line-width 2 :color "grey40" :style released-button))) (t (:inherit (highlight)))))
 '(mode-line-inactive ((t (:background "#555753" :foreground "#bbbbbc"))))
 '(isearch ((t (:foreground "#2e3436" :background "#f57900"))))
 '(isearch-fail ((((class color) (min-colors 88) (background light)) (:background "RosyBrown1")) (((class color) (min-colors 88) (background dark)) (:background "red4")) (((class color) (min-colors 16)) (:background "red")) (((class color) (min-colors 8)) (:background "red")) (((class color grayscale)) (:foreground "grey")) (t (:inverse-video t))))
 '(lazy-highlight ((t (:foreground "#2e3436" :background "#e9b96e"))))
 '(match ((t (:weight bold :foreground "#2e3436" :background "#e9b96e"))))
 '(next-error ((t (:inherit (region)))))
 '(query-replace ((t (:inherit (isearch)))))
 '(show-paren-match ((t (:foreground "#2e3436" :background "#73d216"))))
 '(show-paren-mismatch ((t (:background "#ad7fa8" :foreground "#2e3436"))))
 '(info-xref ((t (:foreground "#729fcf"))))
 '(info-xref-visited ((t (:foreground "#ad7fa8"))))
 '(widget-button ((t (:bold t))))
 '(widget-field ((t (:foreground "orange" :background "gray30"))))
 '(widget-single-line-field ((t (:foreground "orange" :background "gray30"))))
 '(custom-group-tag ((t (:bold t :foreground "#edd400" :height 1.3))))
 '(custom-variable-tag ((t (:bold t :foreground "#edd400" :height 1.1))))
 '(custom-face-tag ((t (:bold t :foreground "#edd400" :height 1.1))))
 '(custom-button ((t (:box (:line-width 1 :style released-button) :background "grey50" :foreground "black"))))
 '(custom-variable-button ((t (:inherit (quote custom-button)))))
 '(custom-button-mouse ((t (:inherit (quote custom-button) :background "grey60"))))
 '(custom-button-unraised ((t (:background "grey50" :foreground "black"))))
 '(custom-button-pressed ((t (:inherit (quote custom-button) :box (:style pressed-button)))))
 '(custom-documentation ((t (:italic t))))
 '(message-cited-text ((t (:foreground "#edd400"))))
 '(message-header-name ((t (:foreground "tomato"))))
 '(message-header-newsgroups ((t (:italic t :bold t :foreground "LightSkyBlue3"))))
 '(message-header-other ((t (:foreground "LightSkyBlue3"))))
 '(message-header-xheader ((t (:foreground "DodgerBlue3"))))
 '(message-header-subject ((t (:foreground "white"))))
 '(message-header-to ((t (:foreground "white"))))
 '(message-header-cc ((t (:foreground "white"))))
 '(minibuffer-prompt ((t (:foreground "#729fcf" :bold t))))
 '(font-lock-negation-char-face ((t (:foreground "#6ac214"))))
 '(font-lock-regexp-grouping-construct ((t (:foreground "#edd400"))))
 '(font-lock-regexp-grouping-backslash ((t (:foreground "#888a85"))))
 '(default ((t (:weight normal :slant normal :underline nil :overline nil :strike-through nil :box nil :inverse-video nil :foreground "#eeeeec" :background "#2e3434" :stipple nil :inherit nil)))))

(provide-theme 'tango-edited)
