{ inputs, pkgs, config, ... }:
{
  programs.alacritty.enable = true;
  xdg.configFile.alacritty.source = ./alacritty;

  # Update this to take either the user
  # or the current default shell as input
  # such that we can set the aliases on 
  # the current shell.
  # programs.zsh.shellAlisases = {
  #   "alacrittyc" = "cd ~/nixos/modules/home-manager/terminals/alacritty/alacritty";
  # };
}
