{
  description = ''
    Fuzzy search wrapper for Nim
  '';
  inputs.src-nimfuzzy.url = "https://github.com/genotrance/nimfuzzy";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
