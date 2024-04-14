{
  extraConfigLua = ''
    -- Avoid showing extra messages when using completion
    vim.opt.shortmess:append("c")
  '';
  opts = {

    # basics #
    number = true;  # show line numbers
    signcolumn = "number";  # show extra signs in the number column
    breakindent = true;  # smarter wrapping of lines
    hidden = true;  # allows unsaved buffers
    title = true;  # change window title
    showmode = false;  # don't show mode
    colorcolumn = "120";

    # completion #
    updatetime = 50;  # faster completions
    completeopt = ["menuone" "noselect" "noinsert"]; # mostly just for cmp

    # Folding (nvim-ufo)
    foldcolumn = "1";
    foldlevel = 99;
    foldlevelstart = 99;
    foldenable = true;

    # searching #
    ignorecase = true;
    smartcase = true;  # Ignore case for searching except for capital letters at beginning
    incsearch = true;  # show results as you type
    inc = "split";  # preview effects of substitute command

    # ripgrep #
    grepprg = "rg --vimgrep";
    grepformat = "%f:%l:%c:%m";

    # movement #
    # cursor position stays the same
    startofline = false;
    scrolloff = 10;
    sidescroll = 1;

    # Indent #
    tabstop = 4;
    softtabstop = 4;
    shiftwidth = 4;
    expandtab = true;
  };
}
