{
  description = ''
    Efficient object storage system
  '';
  inputs.src-stor.url = "https://github.com/nimscale/stor";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
