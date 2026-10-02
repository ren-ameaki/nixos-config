{ ... }: {
  imports = [
    ./boot.nix
    ./audio.nix
    ./umbriel.nix
    ./noctalia.nix
    ./greeter.nix
  ];

  nix.settings.experimental-features = [ "nix-command" "flakes" ];
  nixpkgs.config.allowUnfree = true;

  time.timeZone = "Europe/Amsterdam";

  programs.fish.enable = true;
}
