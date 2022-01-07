{
  description = ''
    fast interval overlaps
  '';
  inputs.src-lapper.url = "https://github.com/brentp/nim-lapper";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
