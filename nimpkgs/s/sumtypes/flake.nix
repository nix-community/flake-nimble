{
  description = ''
    Simple variant generator empowering easy heterogeneous type operations
  '';
  inputs.src-sumtypes.url = "https://github.com/beef331/sumtypes";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
