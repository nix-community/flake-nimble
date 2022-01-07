{
  description = ''
    Convert CSV files to JSON
  '';
  inputs.src-csv2json.url = "https://github.com/achesak/nim-csv2json";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
