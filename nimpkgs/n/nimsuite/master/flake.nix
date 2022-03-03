{
  description = ''a simple test framework for nim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-nimsuite-master.flake = false;
  inputs.src-nimsuite-master.type = "github";
  inputs.src-nimsuite-master.owner = "c6h4clch3";
  inputs.src-nimsuite-master.repo = "NimSuite";
  inputs.src-nimsuite-master.ref = "refs/heads/master";
  inputs.src-nimsuite-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nimsuite-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimsuite-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimsuite-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}