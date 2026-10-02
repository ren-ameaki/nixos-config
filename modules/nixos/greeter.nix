{ pkgs, ... }: {
  services.displayManager.noctalia-greeter = {
    enable = true;
    settings = {
      keyboard.layout = "us";
      cursor.size = 24;
    };
    cursorTheme = {
      package = pkgs.bibata-cursors;
      name = "Bibata-Modern-Ice";
    };
  };
}
