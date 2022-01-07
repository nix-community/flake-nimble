{
  description = ''
    Additional control structures
  '';
  inputs.src-controlStructures.url = "https://github.com/TakeYourFreedom/Additional-Control-Structures-for-Nim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
