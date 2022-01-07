{
  description = ''
    functions to tracks for genomics data files
  '';
  inputs.src-genoiser.url = "https://github.com/brentp/genoiser";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
