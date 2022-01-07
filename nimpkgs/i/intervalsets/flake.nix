{
  description = ''
    Set implementation of disjoint intervals
  '';
  inputs.src-intervalsets.url = "https://github.com/autumngray/intervalsets";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
