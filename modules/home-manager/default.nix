{ pkgs, ... }: {
  imports = [ ./shell.nix ./git.nix ./micro.nix ];

  home.packages = with pkgs; [
    tree
  ];
}
