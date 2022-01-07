{
  description = ''
    Obsolete - please use serialport instead!
  '';
  inputs.src-io-serialport.url = "https://github.com/nimious/io-serialport.git";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
