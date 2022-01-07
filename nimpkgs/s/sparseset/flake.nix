{
  description = ''
    Sparsets for Nim
  '';
  inputs.src-sparseset.url = "https://github.com/planetis-m/sparseset";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
