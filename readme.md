# vim-bufferclose

A vim plugin that closes the current buffer when you `:q`. If there is more
than 1 buffer currently open then it converts a `:q` into `:bdelete`.
You can still force a quit with `:quit` or `ZZ`. If there is only one buffer
open then it will quit vim as normal. Works with  :wq as well.

## Installation

Using vim-plug:

    Plug 'ingolemo/vim-bufferclose'

## License

This project is licensed under the GNU GPL version 3 or later
