{
  keymaps = [
    {
      mode = "n";
      key = "<leader>n";
      action.__raw = "function() Snacks.explorer() end";
      options.silent = true;
      options.desc = "File explorer";
    }
  ];
}
