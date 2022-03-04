{
  description = ''A library of components and systems for use with the Polymorph ECS'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-polymers-master.flake = false;
  inputs.src-polymers-master.type = "github";
  inputs.src-polymers-master.owner = "rlipsc";
  inputs.src-polymers-master.repo = "polymers";
  inputs.src-polymers-master.ref = "refs/heads/master";
  inputs.src-polymers-master.inputs.nixpkgs.follows = "nixpkgs";
  
  
  inputs."https://github.com/rlipsc/polymorph".type = "github";
  inputs."https://github.com/rlipsc/polymorph".owner = "riinr";
  inputs."https://github.com/rlipsc/polymorph".repo = "flake-nimble";
  inputs."https://github.com/rlipsc/polymorph".ref = "flake-pinning";
  inputs."https://github.com/rlipsc/polymorph".dir = "nimpkgs/h/https://github.com/rlipsc/polymorph";
  inputs."https://github.com/rlipsc/polymorph".inputs.nixpkgs.follows = "nixpkgs";
  inputs."https://github.com/rlipsc/polymorph".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-polymers-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-polymers-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-polymers-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}