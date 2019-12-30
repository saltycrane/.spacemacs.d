;; -*- mode: emacs-lisp; lexical-binding: t -*-
;; This file is loaded by Spacemacs at startup.
;; It must be stored in your home directory.

(defun dotspacemacs/layers ()
  "Layer configuration:
This function should only modify configuration layer settings."
  (setq-default
   ;; Base distribution to use. This is a layer contained in the directory
   ;; `+distribution'. For now available distributions are `spacemacs-base'
   ;; or `spacemacs'. (default 'spacemacs)
   dotspacemacs-distribution 'spacemacs

   ;; Lazy installation of layers (i.e. layers are installed only when a file
   ;; with a supported type is opened). Possible values are `all', `unused'
   ;; and `nil'. `unused' will lazy install only unused layers (i.e. layers
   ;; not listed in variable `dotspacemacs-configuration-layers'), `all' will
   ;; lazy install any layer that support lazy installation even the layers
   ;; listed in `dotspacemacs-configuration-layers'. `nil' disable the lazy
   ;; installation feature and you have to explicitly list a layer in the
   ;; variable `dotspacemacs-configuration-layers' to install it.
   ;; (default 'unused)
   dotspacemacs-enable-lazy-installation 'unused

   ;; If non-nil then Spacemacs will ask for confirmation before installing
   ;; a layer lazily. (default t)
   dotspacemacs-ask-for-lazy-installation t

   ;; If non-nil layers with lazy install support are lazy installed.
   ;; List of additional paths where to look for configuration layers.
   ;; Paths must have a trailing slash (i.e. `~/.mycontribs/')
   dotspacemacs-configuration-layer-path '()

   ;; List of configuration layers to load.
   dotspacemacs-configuration-layers
   '(
     ;; ----------------------------------------------------------------
     ;; Example of useful layers you may want to use right away.
     ;; Uncomment some layer names and press `SPC f e R' (Vim style) or
     ;; `M-m f e R' (Emacs style) to install them.
     ;; ----------------------------------------------------------------
     ;; Example of useful layers you may want to use right away.
     ;; Uncomment some layer names and press <SPC f e R> (Vim style) or
     ;; <M-m f e R> (Emacs style) to install them.
     ;; ----------------------------------------------------------------
     (auto-completion :variables
                      auto-completion-enable-help-tooltip 'manual
                      auto-completion-private-snippets-directory "~/.spacemacs.d/snippets"
                      )
     better-defaults
     chrome
     colors
     csv
     docker
     emacs-lisp
     git
     go
     html
     ivy
     (javascript :variables node-add-modules-path t)
     lua
     (markdown :variables
               markdown-live-preview-engine 'vmd
               markdown-hide-urls nil)
     multiple-cursors
     org
     (osx :variables osx-command-as 'super)
     python
     ruby
     search-engine
     shell
     (spell-checking :variables
                     spell-checking-enable-by-default nil)
     sql
     syntax-checking
     typescript
     version-control
     yaml
     )

   ;; List of additional packages that will be installed without being
   ;; wrapped in a layer. If you need some configuration for these
   ;; packages, then consider creating a layer. You can also put the
   ;; configuration in `dotspacemacs/user-config'.
   dotspacemacs-additional-packages '(
                                      blacken
                                      diredfl
                                      doom-themes
                                      flow-minor-mode
                                      flycheck-flow
                                      graphql-mode
                                      nginx-mode
                                      prettier-js
                                      rg
                                      visual-regexp
                                      visual-regexp-steroids
                                      )

   ;; A list of packages that cannot be updated.
   dotspacemacs-frozen-packages '()

   ;; A list of packages that will not be installed and loaded.
   dotspacemacs-excluded-packages '()

   ;; Defines the behaviour of Spacemacs when installing packages.
   ;; Possible values are `used-only', `used-but-keep-unused' and `all'.
   ;; `used-only' installs only explicitly used packages and deletes any unused
   ;; packages as well as their unused dependencies. `used-but-keep-unused'
   ;; installs only the used packages but won't delete unused ones. `all'
   ;; installs *all* packages supported by Spacemacs and never uninstalls them.
   ;; (default is `used-only')
   dotspacemacs-install-packages 'used-only))

(defun dotspacemacs/init ()
  "Initialization:
This function is called at the very beginning of Spacemacs startup,
before layer configuration.
It should only modify the values of Spacemacs settings."
  ;; This setq-default sexp is an exhaustive list of all the supported
  ;; spacemacs settings.
  (setq-default
   ;; If non nil ELPA repositories are contacted via HTTPS whenever it's
   ;; possible. Set it to nil if you have no way to use HTTPS in your
   ;; environment, otherwise it is strongly recommended to let it set to t.
   ;; This variable has no effect if Emacs is launched with the parameter
   ;; `--insecure' which forces the value of this variable to nil.
   ;; (default t)
   dotspacemacs-elpa-https t

   ;; Maximum allowed time in seconds to contact an ELPA repository.
   ;; (default 5)
   dotspacemacs-elpa-timeout 5

   ;; Set `gc-cons-threshold' and `gc-cons-percentage' when startup finishes.
   ;; This is an advanced option and should not be changed unless you suspect
   ;; performance issues due to garbage collection operations.
   ;; (default '(100000000 0.1))
   dotspacemacs-gc-cons '(100000000 0.1)

   ;; If non-nil then Spacelpa repository is the primary source to install
   ;; a locked version of packages. If nil then Spacemacs will install the
   ;; latest version of packages from MELPA. (default nil)
   dotspacemacs-use-spacelpa nil

   ;; If non-nil then verify the signature for downloaded Spacelpa archives.
   ;; (default nil)
   dotspacemacs-verify-spacelpa-archives nil

   ;; If non-nil then spacemacs will check for updates at startup
   ;; when the current branch is not `develop'. Note that checking for
   ;; new versions works via git commands, thus it calls GitHub services
   ;; whenever you start Emacs. (default nil)
   dotspacemacs-check-for-update nil

   ;; If non-nil, a form that evaluates to a package directory. For example, to
   ;; use different package directories for different Emacs versions, set this
   ;; to `emacs-version'. (default 'emacs-version)
   dotspacemacs-elpa-subdirectory 'emacs-version

   ;; One of `vim', `emacs' or `hybrid'.
   ;; `hybrid' is like `vim' except that `insert state' is replaced by the
   ;; `hybrid state' with `emacs' key bindings. The value can also be a list
   ;; with `:variables' keyword (similar to layers). Check the editing styles
   ;; section of the documentation for details on available variables.
   ;; (default 'vim)
   dotspacemacs-editing-style 'vim

   ;; If non-nil output loading progress in `*Messages*' buffer. (default nil)
   dotspacemacs-verbose-loading nil

   ;; Specify the startup banner. Default value is `official', it displays
   ;; the official spacemacs logo. An integer value is the index of text
   ;; banner, `random' chooses a random text banner in `core/banners'
   ;; directory. A string value must be a path to an image format supported
   ;; by your Emacs build.
   ;; If the value is nil then no banner is displayed. (default 'official)
   dotspacemacs-startup-banner nil
   ;; List of items to show in startup buffer or an association list of
   ;; the form `(list-type . list-size)`. If nil then it is disabled.
   ;; Possible values for list-type are:
   ;; `recents' `bookmarks' `projects' `agenda' `todos'.
   ;; List sizes may be nil, in which case
   ;; `spacemacs-buffer-startup-lists-length' takes effect.
   dotspacemacs-startup-lists '((recents . 5)
                                (projects . 7))

   ;; True if the home buffer should respond to resize events. (default t)
   dotspacemacs-startup-buffer-responsive t

   ;; Default major mode for a new empty buffer. Possible values are mode
   ;; names such as `text-mode'; and `nil' to use Fundamental mode.
   ;; (default `text-mode')
   dotspacemacs-new-empty-buffer-major-mode 'text-mode

   ;; Default major mode of the scratch buffer (default `text-mode')
   dotspacemacs-scratch-mode 'text-mode

   ;; Initial message in the scratch buffer, such as "Welcome to Spacemacs!"
   ;; (default nil)
   dotspacemacs-initial-scratch-message nil

   ;; List of themes, the first of the list is loaded when spacemacs starts.
   ;; Press `SPC T n' to cycle to the next theme in the list (works great
   ;; with 2 themes variants, one dark and one light)
   dotspacemacs-themes '(doom-molokai
                         spacemacs-dark
                         spacemacs-light)

   ;; Set the theme for the Spaceline. Supported themes are `spacemacs',
   ;; `all-the-icons', `custom', `doom', `vim-powerline' and `vanilla'. The
   ;; first three are spaceline themes. `doom' is the doom-emacs mode-line.
   ;; `vanilla' is default Emacs mode-line. `custom' is a user defined themes,
   ;; refer to the DOCUMENTATION.org for more info on how to create your own
   ;; spaceline theme. Value can be a symbol or list with additional properties.
   ;; (default '(spacemacs :separator wave :separator-scale 1.5))
   dotspacemacs-mode-line-theme '(spacemacs :separator nil :separator-scale 1.5)

   ;; If non-nil the cursor color matches the state color in GUI Emacs.
   ;; (default t)
   dotspacemacs-colorize-cursor-according-to-state t

   ;; Default font or prioritized list of fonts.
   dotspacemacs-default-font '("Source Code Pro"
                               :size 14
                               :weight normal
                               :width normal)

   ;; The leader key (default "SPC")
   dotspacemacs-leader-key "SPC"

   ;; The key used for Emacs commands `M-x' (after pressing on the leader key).
   ;; (default "SPC")
   dotspacemacs-emacs-command-key "SPC"

   ;; The key used for Vim Ex commands (default ":")
   dotspacemacs-ex-command-key ":"

   ;; The leader key accessible in `emacs state' and `insert state'
   ;; (default "M-m")
   dotspacemacs-emacs-leader-key "M-m"

   ;; Major mode leader key is a shortcut key which is the equivalent of
   ;; pressing `<leader> m`. Set it to `nil` to disable it. (default ",")
   dotspacemacs-major-mode-leader-key ","

   ;; Major mode leader key accessible in `emacs state' and `insert state'.
   ;; (default "C-M-m")
   dotspacemacs-major-mode-emacs-leader-key "C-M-m"

   ;; These variables control whether separate commands are bound in the GUI to
   ;; the key pairs `C-i', `TAB' and `C-m', `RET'.
   ;; Setting it to a non-nil value, allows for separate commands under `C-i'
   ;; and TAB or `C-m' and `RET'.
   ;; In the terminal, these pairs are generally indistinguishable, so this only
   ;; works in the GUI. (default nil)
   dotspacemacs-distinguish-gui-tab nil

   ;; Name of the default layout (default "Default")
   dotspacemacs-default-layout-name "Default"

   ;; If non-nil the default layout name is displayed in the mode-line.
   ;; (default nil)
   dotspacemacs-display-default-layout nil

   ;; If non-nil then the last auto saved layouts are resumed automatically upon
   ;; start. (default nil)
   dotspacemacs-auto-resume-layouts nil

   ;; If non-nil, auto-generate layout name when creating new layouts. Only has
   ;; effect when using the "jump to layout by number" commands. (default nil)
   dotspacemacs-auto-generate-layout-names nil

   ;; Size (in MB) above which spacemacs will prompt to open the large file
   ;; literally to avoid performance issues. Opening a file literally means that
   ;; no major mode or minor modes are active. (default is 1)
   dotspacemacs-large-file-size 1

   ;; Location where to auto-save files. Possible values are `original' to
   ;; auto-save the file in-place, `cache' to auto-save the file to another
   ;; file stored in the cache directory and `nil' to disable auto-saving.
   ;; (default 'cache)
   dotspacemacs-auto-save-file-location 'cache

   ;; Maximum number of rollback slots to keep in the cache. (default 5)
   dotspacemacs-max-rollback-slots 5

   ;; If non-nil, the paste transient-state is enabled. While enabled, after you
   ;; paste something, pressing `C-j' and `C-k' several times cycles through the
   ;; elements in the `kill-ring'. (default nil)
   dotspacemacs-enable-paste-transient-state nil

   ;; Which-key delay in seconds. The which-key buffer is the popup listing
   ;; the commands bound to the current keystroke sequence. (default 0.4)
   dotspacemacs-which-key-delay 0.4

   ;; Which-key frame position. Possible values are `right', `bottom' and
   ;; `right-then-bottom'. right-then-bottom tries to display the frame to the
   ;; right; if there is insufficient space it displays it at the bottom.
   ;; (default 'bottom)
   dotspacemacs-which-key-position 'bottom

   ;; Control where `switch-to-buffer' displays the buffer. If nil,
   ;; `switch-to-buffer' displays the buffer in the current window even if
   ;; another same-purpose window is available. If non-nil, `switch-to-buffer'
   ;; displays the buffer in a same-purpose window even if the buffer can be
   ;; displayed in the current window. (default nil)
   dotspacemacs-switch-to-buffer-prefers-purpose nil

   ;; If non-nil a progress bar is displayed when spacemacs is loading. This
   ;; may increase the boot time on some systems and emacs builds, set it to
   ;; nil to boost the loading time. (default t)
   dotspacemacs-loading-progress-bar t

   ;; If non-nil the frame is fullscreen when Emacs starts up. (default nil)
   ;; (Emacs 24.4+ only)
   dotspacemacs-fullscreen-at-startup nil

   ;; If non-nil `spacemacs/toggle-fullscreen' will not use native fullscreen.
   ;; Use to disable fullscreen animations in OSX. (default nil)
   dotspacemacs-fullscreen-use-non-native nil

   ;; If non-nil the frame is maximized when Emacs starts up.
   ;; Takes effect only if `dotspacemacs-fullscreen-at-startup' is nil.
   ;; (default nil) (Emacs 24.4+ only)
   dotspacemacs-maximized-at-startup nil

   ;; If non-nil the frame is undecorated when Emacs starts up. Combine this
   ;; variable with `dotspacemacs-maximized-at-startup' in OSX to obtain
   ;; borderless fullscreen. (default nil)
   dotspacemacs-undecorated-at-startup nil

   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's active or selected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-active-transparency 90

   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's inactive or deselected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-inactive-transparency 90

   ;; If non-nil show the titles of transient states. (default t)
   dotspacemacs-show-transient-state-title t

   ;; If non-nil show the color guide hint for transient state keys. (default t)
   dotspacemacs-show-transient-state-color-guide t

   ;; If non-nil unicode symbols are displayed in the mode line.
   ;; If you use Emacs as a daemon and wants unicode characters only in GUI set
   ;; the value to quoted `display-graphic-p'. (default t)
   dotspacemacs-mode-line-unicode-symbols t

   ;; If non-nil smooth scrolling (native-scrolling) is enabled. Smooth
   ;; scrolling overrides the default behavior of Emacs which recenters point
   ;; when it reaches the top or bottom of the screen. (default t)
   dotspacemacs-smooth-scrolling t

   ;; Control line numbers activation.
   ;; If set to `t', `relative' or `visual' then line numbers are enabled in all
   ;; `prog-mode' and `text-mode' derivatives. If set to `relative', line
   ;; numbers are relative. If set to `visual', line numbers are also relative,
   ;; but lines are only visual lines are counted. For example, folded lines
   ;; will not be counted and wrapped lines are counted as multiple lines.
   ;; This variable can also be set to a property list for finer control:
   ;; '(:relative nil
   ;;   :visual nil
   ;;   :disabled-for-modes dired-mode
   ;;                       doc-view-mode
   ;;                       markdown-mode
   ;;                       org-mode
   ;;                       pdf-view-mode
   ;;                       text-mode
   ;;   :size-limit-kb 1000)
   ;; When used in a plist, `visual' takes precedence over `relative'.
   ;; (default nil)
   dotspacemacs-line-numbers nil

   ;; Code folding method. Possible values are `evil' and `origami'.
   ;; (default 'evil)
   dotspacemacs-folding-method 'evil

   ;; If non-nil `smartparens-strict-mode' will be enabled in programming modes.
   ;; (default nil)
   dotspacemacs-smartparens-strict-mode nil

   ;; If non-nil pressing the closing parenthesis `)' key in insert mode passes
   ;; over any automatically added closing parenthesis, bracket, quote, etc…
   ;; This can be temporary disabled by pressing `C-q' before `)'. (default nil)
   dotspacemacs-smart-closing-parenthesis nil

   ;; Select a scope to highlight delimiters. Possible values are `any',
   ;; `current', `all' or `nil'. Default is `all' (highlight any scope and
   ;; emphasis the current one). (default 'all)
   dotspacemacs-highlight-delimiters 'all

   ;; If non-nil, start an Emacs server if one is not already running.
   ;; (default nil)
   dotspacemacs-enable-server nil

   ;; Set the emacs server socket location.
   ;; If nil, uses whatever the Emacs default is, otherwise a directory path
   ;; like \"~/.emacs.d/server\". It has no effect if
   ;; `dotspacemacs-enable-server' is nil.
   ;; (default nil)
   dotspacemacs-server-socket-dir nil

   ;; If non-nil, advise quit functions to keep server open when quitting.
   ;; (default nil)
   dotspacemacs-persistent-server nil

   ;; List of search tool executable names. Spacemacs uses the first installed
   ;; tool of the list. Supported tools are `rg', `ag', `pt', `ack' and `grep'.
   ;; (default '("rg" "ag" "pt" "ack" "grep"))
   dotspacemacs-search-tools '("rg" "ag" "pt" "ack" "grep")

   ;; Format specification for setting the frame title.
   ;; %a - the `abbreviated-file-name', or `buffer-name'
   ;; %t - `projectile-project-name'
   ;; %I - `invocation-name'
   ;; %S - `system-name'
   ;; %U - contents of $USER
   ;; %b - buffer name
   ;; %f - visited file name
   ;; %F - frame name
   ;; %s - process status
   ;; %p - percent of buffer above top of window, or Top, Bot or All
   ;; %P - percent of buffer above bottom of window, perhaps plus Top, or Bot or All
   ;; %m - mode name
   ;; %n - Narrow if appropriate
   ;; %z - mnemonics of buffer, terminal, and keyboard coding systems
   ;; %Z - like %z, but including the end-of-line format
   ;; (default "%I@%S")
   dotspacemacs-frame-title-format "%I@%S"

   ;; Format specification for setting the icon title format
   ;; (default nil - same as frame-title-format)
   dotspacemacs-icon-title-format nil

   ;; Delete whitespace while saving buffer. Possible values are `all'
   ;; to aggressively delete empty line and long sequences of whitespace,
   ;; `trailing' to delete only the whitespace at end of lines, `changed' to
   ;; delete only whitespace for changed lines or `nil' to disable cleanup.
   ;; (default nil)
   dotspacemacs-whitespace-cleanup nil

   ;; Either nil or a number of seconds. If non-nil zone out after the specified
   ;; number of seconds. (default nil)
   dotspacemacs-zone-out-when-idle nil

   ;; Run `spacemacs/prettify-org-buffer' when
   ;; visiting README.org files of Spacemacs.
   ;; (default nil)
   dotspacemacs-pretty-docs nil))

(defun dotspacemacs/user-env ()
  "Environment variables setup.
This function defines the environment variables for your Emacs session. By
default it calls `spacemacs/load-spacemacs-env' which loads the environment
variables declared in `~/.spacemacs.env' or `~/.spacemacs.d/.spacemacs.env'.
See the header of this file for more information."
  (spacemacs/load-spacemacs-env))

(defun dotspacemacs/user-init ()
  "Initialization function for user code.
It is called immediately after `dotspacemacs/init', before layer configuration
executes.
 This function is mostly useful for variables that need to be set
before packages are loaded. If you are unsure, you should try in setting them in
`dotspacemacs/user-config' first."

  ;; Fix indentation with < and > via https://www.youtube.com/watch?v=HKF41ivkBb0
  (setq-default evil-shift-round nil)

  (message "end of user-init")
  )

(defun dotspacemacs/user-config ()
  "Configuration function for user code.
This function is called at the very end of Spacemacs initialization after
layers configuration.
This is the place where most of your configurations should be done. Unless it is
explicitly specified that a variable should be set before a package is loaded,
you should place your code here."

  ;; don't use osx trash (too slow)
  (setq delete-by-moving-to-trash nil)

  ;; key bindings
  (global-set-key [f7] 'previous-error)
  (global-set-key [f8] 'next-error)
  (spacemacs/set-leader-keys "d" 'ivy-switch-buffer)
  (spacemacs/set-leader-keys "os" 'rg-dwim-project-dir)
  (spacemacs/set-leader-keys "og" 'dumb-jump-go)
  (spacemacs/set-leader-keys "oG" 'dumb-jump-back)
  (spacemacs/set-leader-keys "of" 'flycheck-next-error)
  (spacemacs/set-leader-keys "oF" 'flycheck-previous-error)
  (spacemacs/set-leader-keys "or" 'revert-buffer)
  (spacemacs/set-leader-keys "ow" 'engine/search-google)

  ;; show the filepath in the frame title
  ;; http://emacsredux.com/blog/2013/04/07/display-visited-files-path-in-the-frame-title/ 
  (setq frame-title-format
        '((:eval (if (buffer-file-name)
                     (abbreviate-file-name (buffer-file-name))
                   "%b"))))

  ;; colorized dired https://github.com/purcell/diredfl
  (diredfl-global-mode t)

  ;; for git-link (included in spacemacs git layer)
  (eval-after-load 'git-link
    '(progn
       (add-to-list 'git-link-remote-alist
                    '("git\\.corp\\.tc" git-link-github))
       (add-to-list 'git-link-commit-remote-alist
                    '("git\\.corp\\.tc" git-link-commit-github))))

  ;; python black auto-formatting
  ;; https://github.com/ambv/black
  ;; https://github.com/proofit404/blacken
  (require 'blacken)
  (setq blacken-line-length 80)
  (add-hook 'python-mode-hook 'blacken-mode)

  ;; Javascript/HTML/CSS indentation
  (setq sc-indent-offset 2)
  (setq-default
   evil-shift-width sc-indent-offset
   ;; jssc-indent-offset-mode
   jssc-indent-offset-basic-offset sc-indent-offset
   ;; json-mode
   js-indent-level sc-indent-offset
   ;; web-mode
   css-indent-offset sc-indent-offset
   web-mode-markup-indent-offset sc-indent-offset
   web-mode-css-indent-offset sc-indent-offset
   web-mode-code-indent-offset sc-indent-offset
   web-mode-attr-indent-offset sc-indent-offset)

  (setq web-mode-enable-auto-quoting nil)
  (setq web-mode-enable-current-column-highlight t)

  (with-eval-after-load 'web-mode
    (add-to-list 'web-mode-indentation-params '("lineup-args" . nil))
    (add-to-list 'web-mode-indentation-params '("lineup-concats" . nil))
    (add-to-list 'web-mode-indentation-params '("lineup-calls" . nil))
    )

  ;; use // style comments
  (defun sc-javascript-comment-dwim (arg)
    (interactive "*P")
    (require 'newcomment)
    (let ((comment-start "//")
          (comment-end "")
          (comment-region-function 'comment-region-default)
          (uncomment-region-function 'uncomment-region-default)
          (comment-start-skip "// *"))
      (comment-dwim arg)
      ))

  ;; copy and comment using // comments from above
  ;; this works, but newlines pasted are not intuitive
  ;; reference https://github.com/redguardtoo/evil-nerd-commenter/blob/54c618aada776bfda0742819ff9e91845a91e095/evil-nerd-commenter.el#L592
  (defun sc-javascript-copy-and-comment (start end)
    (interactive "r")
    (kill-new
     (buffer-substring-no-properties start end))
    (sc-javascript-comment-dwim nil))

  ;; additional key binding for comment-dwim
  (global-set-key (kbd "C-;") 'comment-dwim)

  ;; insert // style comments with C-;
  ;; use M-; for JSX comments
  (add-hook
   'web-mode-hook
   (lambda ()
     (define-key web-mode-map (kbd "C-;") 'sc-javascript-copy-and-comment)))

  (add-hook
   'scss-mode-hook
   (lambda ()
     (define-key web-mode-map (kbd "C-;") 'sc-javascript-copy-and-comment)))

  ;; Let flycheck handle parse errors
  ;; https://github.com/magnars/.emacs.d/blob/bc02c2d8853afc8ee61cc705945b47c725b9fb65/settings/setup-js2-mode.el#L17
  (setq-default js2-mode-show-parse-errors nil)
  (setq-default js2-mode-show-strict-warnings nil)

  (global-evil-matchit-mode 1)

  (add-to-list 'auto-mode-alist '("www\\.saltycrane\\.com" . web-mode))

  (defun sc-escape-html (start end)
    (interactive "r")
    (save-excursion
      (save-restriction
        (narrow-to-region start end)
        (goto-char (point-min))
        (replace-string "&" "&amp;")
        (goto-char (point-min))
        (replace-string "<" "&lt;")
        (goto-char (point-min))
        (replace-string ">" "&gt;")
        )))

  ;; prettier-js
  ;; https://github.com/prettier/prettier-emacs
  ;; Note: uses add-node-modules-path from javascript layer
  (eval-after-load 'web-mode
    '(progn
       (add-hook 'web-mode-hook #'prettier-js-mode)))
  (eval-after-load 'js2-mode
    '(progn
       (add-hook 'js2-mode-hook #'prettier-js-mode)))

  ;; set up flycheck for react-mode
  ;; uses flycheck-flow and flycheck-eslint
  ;; https://github.com/lbolla/emacs-flycheck-flow
  ;; Note: uses add-node-modules-path from javascript layer
  (require 'flycheck-flow)
  (with-eval-after-load 'flycheck
    (flycheck-add-mode 'javascript-flow 'react-mode)
    (flycheck-add-mode 'javascript-eslint 'react-mode)
    (flycheck-add-next-checker 'javascript-flow 'javascript-eslint))

  ;; flycheck for typscript-tsx-mode (eslint, tide)
  (setq-default flycheck-disabled-checkers '(typescript-tslint))
  (with-eval-after-load 'tide
    (with-eval-after-load 'flycheck
      (flycheck-add-mode 'typescript-tide 'typescript-tsx-mode)
      (flycheck-add-mode 'javascript-eslint 'typescript-tsx-mode)
      (flycheck-add-next-checker 'typescript-tide 'javascript-eslint)
      ))
  (setq-default flycheck-eslint-args '("--ext" ".js" "--ext" ".tsx"))

  ;; flow-minor-mode - replacement for facebook's flow-for-emacs/flow.el
  ;; provides flow type at position. uses flow from project node_modules.
  ;; https://github.com/an-sh/flow-minor-mode
  (require 'flow-minor-mode)
  (add-hook 'react-mode-hook 'flow-minor-enable-automatically)

  ;; visual-regexp-steroids
  (require 'visual-regexp)
  (require 'visual-regexp-steroids)

  ;; make C-r do reverse history search in ansi-term
  ;; https://github.com/syl20bnr/spacemacs/issues/2345#issuecomment-240634646
  (defun saltycrane/setup-term-mode ()
    (evil-local-set-key 'insert (kbd "C-r") 'saltycrane/send-C-r))
  (defun saltycrane/send-C-r ()
    (interactive)
    (term-send-raw-string "\C-r"))
  (add-hook 'term-mode-hook 'saltycrane/setup-term-mode)

  (message "end of user-config")
  )
(defun dotspacemacs/emacs-custom-settings ()
  "Emacs custom settings.
This is an auto-generated function, do not modify its content directly, use
Emacs customize menu instead.
This function is called at the very end of Spacemacs initialization."
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (yasnippet-snippets xterm-color writeroom-mode visual-fill-column web-mode treemacs-projectile treemacs-evil treemacs ht pfuture tide sql-indent spaceline-all-the-icons sass-mode ruby-test-mode rubocop rspec-mode robe rg pipenv paradox orgit org-pomodoro alert org-mime org-download org-brain nameless magit-svn live-py-mode link-hint ivy-hydra hl-todo helm-make haml-mode google-translate git-timemachine git-link flycheck-flow eyebrowse expand-region evil-surround evil-nerd-commenter evil-matchit evil-magit editorconfig dumb-jump doom-themes doom-modeline all-the-icons dockerfile-mode docker tablist diff-hl counsel-projectile centered-cursor-mode browse-at-remote blacken auto-yasnippet aggressive-indent ace-window ace-link avy inf-ruby company counsel swiper anzu iedit smartparens flycheck flyspell-correct window-purpose ivy yasnippet multiple-cursors hierarchy magit-popup magit transient git-commit with-editor markdown-mode projectile pythonic js2-mode powerline visual-regexp dash which-key use-package hydra lv async evil org-plus-contrib yapfify yaml-mode ws-butler winum wgrep web-beautify volatile-highlights vmd-mode visual-regexp-steroids vi-tilde-fringe uuidgen unfill typescript-mode toc-org tagedit symon string-inflection spinner spaceline smex smeargle slim-mode shrink-path shell-pop seeing-is-believing scss-mode rvm ruby-tools ruby-refactor ruby-hash-syntax reveal-in-osx-finder restart-emacs request rbenv rake rainbow-mode rainbow-identifiers rainbow-delimiters pyvenv pytest pyenv-mode py-isort pug-mode prettier-js popwin pippel pip-requirements persp-mode pcre2el password-generator overseer osx-trash osx-dictionary org-projectile org-present org-bullets open-junk-file nginx-mode mwim multi-term move-text mmm-mode minitest memoize markdown-toc magit-gitflow macrostep lorem-ipsum log4e livid-mode launchctl json-navigator json-mode js2-refactor js-doc ivy-yasnippet ivy-xref ivy-purpose indent-guide importmagic impatient-mode imenu-list hungry-delete highlight-parentheses highlight-numbers highlight-indentation helm goto-chg golden-ratio godoctor go-tag go-rename go-impl go-guru go-gen-test go-fill-struct go-eldoc gnuplot gntp gmail-message-mode gitignore-templates gitignore-mode gitconfig-mode gitattributes-mode git-messenger git-gutter-fringe git-gutter-fringe+ gh-md fuzzy font-lock+ flyspell-correct-ivy flymd flycheck-pos-tip flx-ido flow-minor-mode fill-column-indicator fancy-battery evil-visualstar evil-visual-mark-mode evil-unimpaired evil-tutor evil-org evil-numbers evil-lisp-state evil-lion evil-indent-plus evil-iedit-state evil-goggles evil-exchange evil-escape evil-ediff evil-cleverparens evil-args evil-anzu eval-sexp-fu eshell-z eshell-prompt-extras esh-help emmet-mode elisp-slime-nav eldoc-eval edit-server dotenv-mode docker-tramp diminish cython-mode csv-mode counsel-css company-web company-tern company-statistics company-quickhelp company-lua company-go company-anaconda column-enforce-mode color-identifiers-mode clean-aindent-mode chruby bundler bind-key auto-highlight-symbol auto-dictionary auto-compile add-node-modules-path ac-ispell))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
)
