{ ... }: {
  imports = [
    ./umbriel.nix
    ./noctalia.nix
    ./greeter.nix
    ./keyring.nix
  ];

  programs.fish.enable = true;
}
