{
  description = ''tools for handling CSV files (comma or tab-separated) with an API similar to Python's CSVDictReader and -Writer.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-csvtable-v0_3_1.flake = false;
  inputs.src-csvtable-v0_3_1.type = "github";
  inputs.src-csvtable-v0_3_1.owner = "apahl";
  inputs.src-csvtable-v0_3_1.repo = "csvtable";
  inputs.src-csvtable-v0_3_1.ref = "refs/tags/v0.3.1";
  inputs.src-csvtable-v0_3_1.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-csvtable-v0_3_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-csvtable-v0_3_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-csvtable-v0_3_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}