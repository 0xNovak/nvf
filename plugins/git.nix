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
    utility.oil-nvim.gitStatus.enable = true;
    utility.diffview-nvim.enable = true;
  };
}
