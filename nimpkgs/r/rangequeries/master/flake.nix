{
  description = ''An implementation of Range Queries in Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-rangequeries-master.flake = false;
  inputs.src-rangequeries-master.type = "github";
  inputs.src-rangequeries-master.owner = "vanyle";
  inputs.src-rangequeries-master.repo = "RangeQueriesNim";
  inputs.src-rangequeries-master.ref = "refs/heads/master";
  inputs.src-rangequeries-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-rangequeries-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-rangequeries-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-rangequeries-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}