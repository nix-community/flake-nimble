{
  description = ''
    Turn TSV file or stream into JSON file or stream
  '';
  inputs.src-tsv2json.url = "https://github.com/hectormonacci/tsv2json";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
