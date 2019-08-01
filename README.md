# Spacemacs configuration

Used for TypeScript, JavaScript, React, Python.

## Usage

    $ git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d
    $ cd ~/.emacs.d
    $ git checkout develop
    $ git clone https://github.com/saltycrane/.spacemacs.d ~/.spacemacs.d
    $ npm install -g typescript
    $ npm install -g prettier
    $ npm install -g vmd  # for markdown preview
    $ brew install ripgrep
    $ cd ~/.spacemacs.d
    $ python3.6 -m venv venv
    $ source venv/bin/activate
    $ pip install -r requirements.txt
    $ emacs

## Key bindings

    I: insert mode, N: normal mode, V: visual mode

    | key       | function         | description                                                   | mode(s) |
    |-----------|------------------|---------------------------------------------------------------|---------|
    | M-SPC     | just-one-space   | change multiple spaces into just one space                    | I, N    |
    | >         | evil-shift-right | indent region right by fixed amount                           | V       |
    | <         | evil-shift-left  | indent region left by fixed amount                            | V       |
    | J         | evil-join        | join the next line with the current line                      | N       |
    | SPC v     | er/expand-region | enter expand region mode. hit v to expand. hit V to contract. | N       |
    | SPC f e D |                  | compare your .spacemacs with official template                |         |

## To try

    SPC j w - avy jump word
    [ SPC   - insert space above
    ] SPC   - insert space below
    SPC p a - toggle between implementation and test
    SPC p I - invalidate projectile cache
    SPC t s - toggle flycheck
    SPC e l - toggle error list display
    SPC e . - error trasient state

## Failed attempts

    ;; Try to disable an eslint rule
    (defun saltycrane/add-options-to-eslint-executable ()
      (setq-local flycheck-javascript-eslint-executable "eslint --rule no-warning-comments: 0 ")
      )
    (add-hook 'flycheck-mode-hook #'saltycrane/add-options-to-eslint-executable)

## See also

- [Magit in Spacemacs notes](https://www.saltycrane.com/blog/2018/11/magit-spacemacs-evil-magit-notes/) 
