{
  plugins.nvim-tree.enable = true;
  keymaps = [
    {
      mode = "n";
      key = "<leader>n";
      action = "<cmd>NvimTreeToggle<cr>";
    }
  ];
}
