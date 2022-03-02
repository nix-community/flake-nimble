{
  description = ''Develop SuperCollider UGens in Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-scnim-master.flake = false;
  inputs.src-scnim-master.type = "github";
  inputs.src-scnim-master.owner = "capocasa";
  inputs.src-scnim-master.repo = "scnim";
  inputs.src-scnim-master.ref = "refs/heads/master";
  inputs.src-scnim-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-scnim-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-scnim-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-scnim-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}