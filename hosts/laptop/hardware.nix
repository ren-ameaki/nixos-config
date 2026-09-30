{
  networking.networkmanager.enable = true;
  services.libinput.enable = true;

  swapDevices = [
    {
      device = "/var/lib/swapfile";
      size = 16 * 1024;
    }
  ];
}
