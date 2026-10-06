{ ... }: {
  imports = [
    ./umbriel.nix
    ./noctalia.nix
    ./greeter.nix
  ];

  programs.fish.enable = true;
}
