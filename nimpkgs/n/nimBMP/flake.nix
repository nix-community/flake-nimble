{
  description = ''
    BMP encoder and decoder
  '';
  inputs.src-nimBMP.url = "https://github.com/jangko/nimBMP";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
