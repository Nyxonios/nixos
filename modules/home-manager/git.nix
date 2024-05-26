{userSettings, ...}: 
{
  programs.git = {
    enable = true;
    userName = userSettings.user.name;
    userEmail = userSettings.user.email;
  };
}
