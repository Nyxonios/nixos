{ ... }:
let
  iconsPath = "./icons";
in
{
  home-manager.users.nyxonios = {
    xdg.configFile."wlogout/${iconsPath}".source = ./icons;

    programs.wlogout = {
      enable = true;
      layout = [
        {
          label = "lock";
          action = "loginctl lock-session";
          text = "Lock";
          keybind = "l";
        }
        {
          label = "reboot";
          action = "systemctl reboot";
          text = "Reboot";
          keybind = "r";
        }
        {
          label = "shutdown";
          action = "systemctl poweroff";
          text = "Shutdown";
          keybind = "s";
        }
        {
          label = "logout";
          action = "hyprctl dispatch exit 0";
          text = "Logout";
          keybind = "e";
        }
        {
          label = "suspend";
          action = "systemctl suspend";
          text = "Suspend";
          keybind = "u";
        }
      ];

      style = ''
        window {
            font-family: FiraCode, FiraCode Nerd Font;
            font-size: 12pt;
            color: #cdd6f4; 
            background-color: rgba(0, 0, 0, .9);
        }

        button {
            background-repeat: no-repeat;
            background-position: center;
            background-size: 20%;
            border: none;
            color: #fbf1c7;
            text-shadow: none;
            border-radius: 20px 20px 20px 20px;
            background-color: rgba(1, 121, 111, 0);
            margin: 5px;
            transition: box-shadow 0.2s ease-in-out, background-color 0.2s ease-in-out;
        }

        button:hover {
            background-color: rgba(213, 196, 161, 0.1);
        }

        #lock {
            background-image: image(url("${iconsPath}/lock.png"));
            background-size: 10%;
        }
        #lock:focus {
            background-image: image(url("${iconsPath}/lock-hover.png"));
            background-size: 10%;
        }

        #logout {
            background-image: image(url("${iconsPath}/logout.png"));
            background-size: 10%;
        }
        #logout:focus {
            background-image: image(url("${iconsPath}/logout-hover.png"));
            background-size: 10%;
        }

        #suspend {
            background-image: image(url("${iconsPath}/sleep.png"));
            background-size: 10%;
        } 
        #suspend:focus {
            background-image: image(url("${iconsPath}/sleep-hover.png"));
            background-size: 10%;
        }

        #shutdown {
            background-image: image(url("${iconsPath}/power.png"));
            background-size: 10%;
        }
        #shutdown:focus {
            background-image: image(url("${iconsPath}/power-hover.png"));
            background-size: 10%;
        }

        #reboot {
            background-image: image(url("${iconsPath}/restart.png"));
            background-size: 10%;
        }
        #reboot:focus {
            background-image: image(url("${iconsPath}/restart-hover.png"));
            background-size: 10%;
        }
      '';
    };
  };
}
