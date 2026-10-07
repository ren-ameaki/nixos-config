{ pkgs, ... }: {
  imports = [
    ./shell.nix
    ./git.nix
    ./umbriel.nix
    ./udiskie.nix
  ];

  home.packages = with pkgs; [
    tree
    kitty
    brave-origin
  ];
}
