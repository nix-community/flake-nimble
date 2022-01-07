{
  description = ''
    Pure nim fuzzy search implementation. Supports substrings etc
  '';
  inputs.src-fuzzy.url = "https://github.com/pigmej/fuzzy";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
