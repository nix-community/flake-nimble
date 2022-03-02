{
  description = ''Deprecated module for vector/matrices operations.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-basic2d-master.flake = false;
  inputs.src-basic2d-master.type = "github";
  inputs.src-basic2d-master.owner = "nim-lang";
  inputs.src-basic2d-master.repo = "basic2d";
  inputs.src-basic2d-master.ref = "refs/heads/master";
  inputs.src-basic2d-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-basic2d-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-basic2d-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-basic2d-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}