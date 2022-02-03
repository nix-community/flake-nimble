{
  description = ''tools for handling CSV files (comma or tab-separated) with an API similar to Python's CSVDictReader and -Writer.'';
  inputs.src-csvtable-0_3_0.flake = false;
  inputs.src-csvtable-0_3_0.type = "github";
  inputs.src-csvtable-0_3_0.owner = "apahl";
  inputs.src-csvtable-0_3_0.repo = "csvtable";
  inputs.src-csvtable-0_3_0.ref = "refs/tags/0.3.0";
  
  outputs = { self, nixpkgs, src-csvtable-0_3_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-csvtable-0_3_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-csvtable-0_3_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}