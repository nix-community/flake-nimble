{
  description = ''
    tools for handling CSV files (comma or tab-separated) with an API similar to Python's CSVDictReader and -Writer.
  '';
  inputs.src-csvtable.url = "https://github.com/apahl/csvtable";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
