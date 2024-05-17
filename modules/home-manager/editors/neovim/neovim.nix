
{ inputs, pkgs, config, ... }:
{
  programs.neovim = {
    enable = true;
    defaultEditor = true;
  };

  # Update this to take either the user
  # or the current default shell as input
  # such that we can set the aliases on 
  # the current shell.
  # programs.zsh.shellAlisases = {
  #   "nvimc" = "cd ~/nixos/modules/home-manager/editors/neovim/nvim/";
  # };

  xdg.configFile.nvim.source = ./nvim;
}
