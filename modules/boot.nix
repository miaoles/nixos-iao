{ ... }:

{
      boot = {
            loader.efi = {
                  canTouchEfiVariables = true;
            };

            loader.grub = {
                  enable = true;
                  efiSupport = true;
                  device = "nodev";
                  useOSProber = true;
                  configurationLimit = 12;
                  extraConfig = "GRUB_CMDLINE_LINUX_DEFAULT=\"quiet splash acpi_osi=Linux\"";
            };

            initrd.kernelModules = [
                  "amdgpu"
                  "i2c-dev"
                  "i2c-piix4"
            ];

            # Keychron Function Keys
            extraModprobeConfig = ''
                  options hid_apple fnmode=2
            '';

            tmp.useTmpfs = true;
      };
}
