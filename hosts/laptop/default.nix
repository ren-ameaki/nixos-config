{ pkgs, ... }: {
  imports = [
    ./hardware-configuration.nix
    ./core.nix
  ];

  networking.hostName = "NixOS-Laptop";

  users.users.renLaptop = {
    isNormalUser = true;
    shell = pkgs.fish;
    extraGroups = [ "networkmanager" "wheel" ];
  };

  home-manager.users.renLaptop = {
    imports = [ ../../modules/home-manager ];
    home.stateVersion = "26.05";
  };

  # Do NOT change this value.
  system.stateVersion = "26.05";
}
