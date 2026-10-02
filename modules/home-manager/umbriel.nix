{ inputs, ... }: {
  imports = [ inputs.umbriel.homeModules.default ];

  programs.umbriel = {
    enable = true;
    settings = {
      general.autostart = [ "noctalia" ];
      include.optional.files = [ "noctalia.toml" ];
      layout.gap = 5;
      input.keyboard.layout = "us";

      keybinds = {
        "Mod+L" = "spawn:noctalia msg panel-toggle launcher";
        "Mod+Escape" = "session-quit";
        "Mod+Return" = "spawn:kitty";
        "Mod+Q" = "window-close";
        "Mod+C" = "spawn:noctalia msg panel-toggle control-center";
        "Mod+S" = "spawn:noctalia msg settings-toggle";
        "XF86AudioRaiseVolume" = "spawn:noctalia msg volume-up";
        "XF86AudioLowerVolume" = "spawn:noctalia msg volume-down";
        "XF86AudioMute" = "spawn:noctalia msg volume-mute";
        "XF86MonBrightnessUp" = "spawn:noctalia msg brightness-up";
        "XF86MonBrightnessDown" = "spawn:noctalia msg brightness-down";
      };

      window_rule = [
        {
          match.app_id = "^dev.noctalia.Noctalia$";
          default_floating = true;
          default_floating_size_px = {
            width = 1020;
            height = 900;
          };
        }
      ];
    };
  };
}
