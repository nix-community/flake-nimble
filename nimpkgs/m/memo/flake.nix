{
  description = ''
    Memoize Nim functions
  '';
  inputs.src-memo.url = "https://github.com/andreaferretti/memo";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
