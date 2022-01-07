{
  description = ''
    Bindings for libserialport, the cross-platform serial communication library.
  '';
  inputs.src-serialport.url = "https://github.com/nimious/serialport.git";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
