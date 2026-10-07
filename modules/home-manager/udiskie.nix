{ ... }: {
  services.udiskie = {
    enable = true;
    settings = {
      program_options = {
        file_manager = "/run/current-system/sw/bin/thunar";
      };
    };
  };
}
