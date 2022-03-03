{
  description = ''tools for handling CSV files (comma or tab-separated) with an API similar to Python's CSVDictReader and -Writer.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-csvtable-master.flake = false;
  inputs.src-csvtable-master.type = "github";
  inputs.src-csvtable-master.owner = "apahl";
  inputs.src-csvtable-master.repo = "csvtable";
  inputs.src-csvtable-master.ref = "refs/heads/master";
  inputs.src-csvtable-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-csvtable-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-csvtable-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-csvtable-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}