{
  globals.mapleader = " ";

  keymaps = [

    # quickswitch
    { mode = "n"; key = "<bs>"; action = "<c-^>"; }
    # quick save and exit
    { mode = "n"; key = "<leader>w"; action = ":w<CR>"; }
    { mode = "n"; key = "<leader>q"; action = ":q<CR>"; }
    { mode = "n"; key = "<leader>wq"; action = ":wq<CR>"; }

    # move lines in visual mode
    { mode = "v"; key = "J"; action = ":m '>+1<CR>gv=gv"; }
    { mode = "v"; key = "K"; action = ":m '<-2<CR>gv=gv"; }

    # movement in long lines
    { mode = "n"; key = "j"; action = "gj"; options = { silent = true; }; }
    { mode = "n"; key = "k"; action = "gk"; options = { silent = true; }; }

    # highlihg remove
    { mode = "n"; key = "<CR>"; action = "noh<CR><CR>"; }

    # fast switch from insert mode
    { mode = "i"; key = "kj"; action = "<c-c>`^"; }
    { mode = "i"; key = "kjs"; action = "<c-c>`^:w<CR>"; }

    # split moving
    { mode = "n"; key = "<C-h>"; action = "<C-w>h"; }
    { mode = "n"; key = "<C-j>"; action = "<C-w>j"; }
    { mode = "n"; key = "<C-k>"; action = "<C-w>k"; }
    { mode = "n"; key = "<C-l>"; action = "<C-w>l"; }

  ];
}
