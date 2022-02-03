{
  description = ''tools for handling CSV files (comma or tab-separated) with an API similar to Python's CSVDictReader and -Writer.'';
  inputs.src-csvtable-v0_3_1.flake = false;
  inputs.src-csvtable-v0_3_1.type = "github";
  inputs.src-csvtable-v0_3_1.owner = "apahl";
  inputs.src-csvtable-v0_3_1.repo = "csvtable";
  inputs.src-csvtable-v0_3_1.ref = "refs/tags/v0.3.1";
  
  outputs = { self, nixpkgs, src-csvtable-v0_3_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-csvtable-v0_3_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-csvtable-v0_3_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}