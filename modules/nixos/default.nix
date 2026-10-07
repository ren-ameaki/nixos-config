{ ... }: {
  imports = [
    ./umbriel.nix
    ./noctalia.nix
    ./greeter.nix
    ./keyring.nix
    ./thunar.nix
  ];

  programs.fish.enable = true;
}
