Spacemacs configuration

Used for Javascript (ES6), React, Python.

Usage:

    $ git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d
    $ git clone https://github.com/saltycrane/.spacemacs.d
    $ npm install -g tern
    $ npm install -g eslint babel-eslint eslint-plugin-react
    $ npm install -g js-beautify
    $ npm install -g flow-bin

Key bindings:

    I: insert mode, N: normal mode, V: visual mode

    | key   | function         | description                                                   | mode(s) |
    |-------|------------------|---------------------------------------------------------------|---------|
    | M-SPC | just-one-space   | change multiple spaces into just one space                    | I, N    |
    | >     | evil-shift-right | indent region right by fixed amount                           | V       |
    | <     | evil-shift-left  | indent region left by fixed amount                            | V       |
    | J     | evil-join        | join the next line with the current line                      | N       |
    | SPC v | er/expand-region | enter expand region mode. hit v to expand. hit V to contract. | N       |

Failed attempts:

  ;; Try to disable an eslint rule
  (defun saltycrane/add-options-to-eslint-executable ()
    (setq-local flycheck-javascript-eslint-executable "eslint --rule no-warning-comments: 0 ")
    )
  (add-hook 'flycheck-mode-hook #'saltycrane/add-options-to-eslint-executable)
