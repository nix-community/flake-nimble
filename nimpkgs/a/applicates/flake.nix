{
  description = ''
    "pointers" to cached AST that instantiate routines when called
  '';
  inputs.src-applicates.url = "https://github.com/hlaaftana/applicates";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
