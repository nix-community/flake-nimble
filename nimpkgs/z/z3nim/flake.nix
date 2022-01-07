{
  description = ''
    Z3 binding for Nim
  '';
  inputs.src-z3nim.url = "https://github.com/Double-oxygeN/z3nim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
