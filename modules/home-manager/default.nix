{ pkgs, ... }: {
  imports = [
    ./shell.nix
    ./git.nix
    ./umbriel.nix
    ./udiskie.nix
    ./gtk.nix
  ];

  home.packages = with pkgs; [
    tree
    kitty
    adw-gtk3
    brave-origin
  ];
}
