{
  description = ''
    Library for parsing, stringifying, reading, and writing CSV (comma separated value) files
  '';
  inputs.src-csv.url = "https://github.com/achesak/nim-csv";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
