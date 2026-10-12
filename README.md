# My personal NixOS configuration

## Project Structure

```
~/nixos-config/
  flake.nix
  flake.lock
  .gitignore
  .gitattributes
  hosts/
    laptop/
      default.nix                    # User & host. Import host-specific modules.
      core.nix                       # Core config. Includes device specifics.
      hardware-configuration.nix     # Generated on installation. Don't edit.
    desktop/                         # Planned. Not created yet.
      default.nix                    # User & host. Import host-specific modules.
      core.nix                       # Core config. Includes device specifics.
      hardware-configuration.nix     # Generated on installation. Don't edit.
  modules/
    nixos/            # System-level modules.
      default.nix     # Import shared modules. Simple enables without module.
      umbriel.nix
      noctalia.nix
      greeter.nix
      keyring.nix
      thunar.nix
    home-manager/     # User-level modules.
      default.nix     # Import shared modules. Simple enables. Packages.
      shell.nix
      git.nix
      umbriel.nix
      udiskie.nix
      gtk.nix
```
## Specifications

**OS:** NixOS (Unstable)<br/> 
**Compositor:** Umbriel<br/> 
**Bar/Shell:** Noctalia<br/> 
**Shell:** fish<br/> 
**Editor:** Nano<br/> 
**Terminal:** Kitty<br/> 
**File Manager:** Thunar<br/> 
