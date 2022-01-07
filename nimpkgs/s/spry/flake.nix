{
  description = ''
    A Smalltalk and Rebol inspired language implemented as an AST interpreter
  '';
  inputs.src-spry.url = "https://github.com/gokr/spry";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
