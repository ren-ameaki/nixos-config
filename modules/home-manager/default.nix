{ pkgs, ... }: {
  imports = [
    ./shell.nix
    ./git.nix
    ./micro.nix
    ./umbriel.nix
  ];

  home.packages = with pkgs; [
    tree
    kitty
  ];
}
