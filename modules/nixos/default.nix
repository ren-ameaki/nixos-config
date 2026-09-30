{ pkgs, ... }: {
  imports = [
    ./boot.nix
    ./audio.nix
  ];

  nix.settings.experimental-features = [ "nix-command" "flakes" ];
  nixpkgs.config.allowUnfree = true;

  time.timeZone = "Europe/Amsterdam";
  i18n.defaultLocale = "en_US.UTF-8";
  console = {
    font = "ter-v24n";
    packages = [ pkgs.terminus_font ];
    keyMap = "us";
  };

  programs.fish.enable = true;

  # In case I ever need this.
  # environment.systemPackages = with pkgs; [
  # ];
}
