{
  description = ''
    Nim support for substitution expressions
  '';
  inputs.src-subexes.url = "https://github.com/nim-lang/graveyard?subdir=subexes";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
