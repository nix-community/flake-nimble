{
  description = ''Parse config by defining an object'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-sim-0_1_3.flake = false;
  inputs.src-sim-0_1_3.type = "github";
  inputs.src-sim-0_1_3.owner = "ba0f3";
  inputs.src-sim-0_1_3.repo = "sim.nim";
  inputs.src-sim-0_1_3.ref = "refs/tags/0.1.3";
  inputs.src-sim-0_1_3.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-sim-0_1_3, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-sim-0_1_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-sim-0_1_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}