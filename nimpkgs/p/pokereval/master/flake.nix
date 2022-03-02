{
  description = ''A poker hand evaluator'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-pokereval-master.flake = false;
  inputs.src-pokereval-master.type = "github";
  inputs.src-pokereval-master.owner = "jasonlu7";
  inputs.src-pokereval-master.repo = "pokereval";
  inputs.src-pokereval-master.ref = "refs/heads/master";
  inputs.src-pokereval-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-pokereval-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-pokereval-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-pokereval-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}