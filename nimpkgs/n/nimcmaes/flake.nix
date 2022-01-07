{
  description = ''
    Nim CMAES library
  '';
  inputs.src-nimcmaes.url = "https://github.com/zevv/nimcmaes";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
