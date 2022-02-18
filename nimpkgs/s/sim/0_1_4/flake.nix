{
  description = ''Parse config by defining an object'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-sim-0_1_4.flake = false;
  inputs.src-sim-0_1_4.type = "github";
  inputs.src-sim-0_1_4.owner = "ba0f3";
  inputs.src-sim-0_1_4.repo = "sim.nim";
  inputs.src-sim-0_1_4.ref = "refs/tags/0.1.4";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-sim-0_1_4, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-sim-0_1_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-sim-0_1_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}