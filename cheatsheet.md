## Cheatsheet for the custom keymappings in my Neovim config.

### Exit Insert Mode

    jk: Exit insert mode with jk.

### Search Highlighting

    <leader>nh: Clear search highlights.

### Increment/Decrement Numbers

    <leader>+: Increment number.
    <leader>-: Decrement number.

### Window Management

    <leader>sv: Split window vertically.
    <leader>sh: Split window horizontally.
    <leader>se: Make split windows equal size.
    <leader>sx: Close current split window.
    <leader>sm: Maximize/minimize a split.

### Tab Management

    <leader>to: Open new tab.
    <leader>tx: Close current tab.
    <leader>tn: Go to next tab.
    <leader>tp: Go to previous tab.
    <leader>tf: Open current buffer in new tab.

### Session Management

    <leader>wr: Restore session for current working directory.
    <leader>ws: Save session for current working directory.

### Formatting and Linting

    <leader>mp: Format file or range (in visual mode).
    <leader>l: Trigger linting for current file.

### File Explorer (NvimTree)

    <leader>ee: Toggle file explorer.
    <leader>ef: Toggle file explorer on current file.
    <leader>ec: Collapse file explorer.
    <leader>er: Refresh file explorer.

### Substitution

    s: Substitute with motion.
    ss: Substitute line.
    S: Substitute to end of line.
    s (visual mode): Substitute in visual mode.

### Telescope (Fuzzy Finder)

    <leader>ff: Fuzzy find files in current directory.
    <leader>fr: Fuzzy find recent files.
    <leader>fs: Find string in current directory.
    <leader>fc: Find string under cursor in current directory.
    <leader>ft: Find todos.

### Todo Comments Navigation

    ]t: Next todo comment.
    [t: Previous todo comment.

### Trouble (Diagnostics and Todo List)

    <leader>xx: Open/close trouble list.
    <leader>xw: Open trouble workspace diagnostics.
    <leader>xd: Open trouble document diagnostics.
    <leader>xq: Open trouble quickfix list.
    <leader>xl: Open trouble location list.
    <leader>xt: Open todos in trouble.

### Nvim-cmp (Completion)

    <C-k>: Previous suggestion.
    <C-j>: Next suggestion.
    <C-b>: Scroll docs up.
    <C-f>: Scroll docs down.
    <C-Space>: Show completion suggestions.
    <C-e>: Close completion window.
    <CR>: Confirm completion.

### Nvim-Treesitter

    <C-space>: Initiate selection or node incremental selection.
    <bs>: Node decremental selection.
