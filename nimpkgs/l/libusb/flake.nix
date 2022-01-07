{
  description = ''
    Bindings for libusb, the cross-platform user library to access USB devices.
  '';
  inputs.src-libusb.url = "https://github.com/nimious/libusb.git";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
