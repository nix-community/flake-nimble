{
  description = ''
    Duplicate files finder
  '';
  inputs.src-ndf.url = "https://github.com/rustomax/ndf";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
