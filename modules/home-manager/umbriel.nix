{ inputs, ... }: {
  imports = [ inputs.umbriel.homeModules.default ];

  programs.umbriel = {
    enable = true;
    settings = {
      # general.autostart = [ "noctalia" ];
      layout.gap = 5;
      keybinds = {
        # "Mod" = "spawn:noctalia msg panel-toggle launcher";
        "Mod+Escape" = "session-quit";
        "Mod+Return" = "spawn:kitty";
        "Mod+Q" = "window-close";
      };
    };
  };
}
