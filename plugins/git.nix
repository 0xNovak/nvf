{
  config.vim.git = {
    enable = true;
    gitsigns = {
      enable = true;
      codeActions.enable = true;
    };
    neogit.enable = true;
  };
  config.vim = {
    terminal.toggleterm.lazygit.enable = true;
    utility.oil-nvim.gitStatus.enable = true;
    utility.diffview-nvim.enable = true;
  };
}
