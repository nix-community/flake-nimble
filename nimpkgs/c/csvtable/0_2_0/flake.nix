{
  description = ''tools for handling CSV files (comma or tab-separated) with an API similar to Python's CSVDictReader and -Writer.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-csvtable-0_2_0.flake = false;
  inputs.src-csvtable-0_2_0.type = "github";
  inputs.src-csvtable-0_2_0.owner = "apahl";
  inputs.src-csvtable-0_2_0.repo = "csvtable";
  inputs.src-csvtable-0_2_0.ref = "refs/tags/0.2.0";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-csvtable-0_2_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-csvtable-0_2_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-csvtable-0_2_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}