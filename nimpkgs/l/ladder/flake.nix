{
  description = ''
    Ladder logic macros for Nim
  '';
  inputs.src-ladder.url = "https://gitlab.com/ryukoposting/nim-ladder";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
