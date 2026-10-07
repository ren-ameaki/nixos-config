{ ... }: {
  imports = [
    ./umbriel.nix
    ./noctalia.nix
    ./greeter.nix
    ./keyring.nix
    ./thunar.nix
    ./gtk.nix
  ];

  programs.fish.enable = true;
}
