{
  description = ''
    A web DSL for Nim
  '';
  inputs.src-rosencrantz.url = "https://github.com/andreaferretti/rosencrantz";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
