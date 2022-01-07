{
  description = ''
    Obsolete - please use libusb instead!
  '';
  inputs.src-io-usb.url = "https://github.com/nimious/io-usb.git";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
