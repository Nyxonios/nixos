
{ pkgs, ... }:
{
  programs.hyprland.enable = true;


  environment.sessionVariables = {
    WLR_NO_HARDWARE_CURSORS = "1";
    NIXOS_OZONE_WL = "1";
  };

  hardware = {
    opengl.enable = true;
    nvidia.modesetting.enable = true;
  };


  # xdg.portal.enable = true;
  # xdg.portal.extraPortals = [ pkgs.xdg-desktop-portal-gtk ];

  home-manager.users.nyxonios = {
    xdg.configFile."hypr/scripts".source = ./scripts;
    xdg.configFile."hypr/hyprland.conf".source = ./hyprland.conf;

    wayland.windowManager.hyprland = {
      enable = true;
      xwayland.enable = true;
    };


    home.packages = with pkgs; [
      dunst
      libnotify
      rofi-wayland
      swww
    ];
  };
}
