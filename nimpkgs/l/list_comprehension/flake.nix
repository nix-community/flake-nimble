{
  description = ''
    List comprehension, for creating sequences.
  '';
  inputs.src-list_comprehension.url = "https://github.com/nim-lang/graveyard?subdir=lc";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
