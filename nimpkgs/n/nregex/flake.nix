{
  description = ''
    A DFA based regex engine
  '';
  inputs.src-nregex.url = "https://github.com/nitely/nregex";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
