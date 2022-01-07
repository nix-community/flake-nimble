{
  description = ''
    Convert accents (diacritics) from strings to latin characters.
  '';
  inputs.src-latinize.url = "https://github.com/AmanoTeam/Latinize";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
