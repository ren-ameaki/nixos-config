{ inputs, ... }: {
  imports = [ inputs.umbriel.homeModules.default ];

  programs.umbriel = {
    enable = true;
    settings = {
      general.autostart = [ "noctalia" ];
      include.optional.files = [ "noctalia.toml" ];

      layout.mode = "dwindle";
      layout.gap = 5;

      input.keyboard.layout = "us";
      input.middle_click_paste = false;
      input.mouse.accel_profile = "flat";

      output."eDP-1".scale = 1.25;

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

        "Mod+Tab" = "overview-toggle";

        "Mod+Left" = "workspace-previous";
        "Mod+Right" = "workspace-next";
        "Mod+1" = "workspace-switch:1";
        "Mod+2" = "workspace-switch:2";
        "Mod+3" = "workspace-switch:3";
        "Mod+4" = "workspace-switch:4";
        "Mod+5" = "workspace-switch:5";

        "Mod+Ctrl+Left" = "window-move-to-workspace-previous";
        "Mod+Ctrl+Right" = "window-move-to-workspace-next";
        "Mod+Ctrl+1" = "window-move-to-workspace:1";
        "Mod+Ctrl+2" = "window-move-to-workspace:2";
        "Mod+Ctrl+3" = "window-move-to-workspace:3";
        "Mod+Ctrl+4" = "window-move-to-workspace:4";
        "Mod+Ctrl+5" = "window-move-to-workspace:5";
      };

      window_rule = [
        {
          match.app_id = "^dev.noctalia.Noctalia$";
          default_floating = true;
          default_floating_size_px = {
            width = 1020;
            height = 780;
          };
        }
      ];
    };
  };
}
