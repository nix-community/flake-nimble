{
  description = ''
    oracle odpi-c wrapper for Nim
  '';
  inputs.src-nimodpi.url = "https://github.com/mikra01/nimodpi";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
