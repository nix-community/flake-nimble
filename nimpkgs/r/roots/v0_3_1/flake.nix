{
  description = ''Root finding functions for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-roots-v0_3_1.flake = false;
  inputs.src-roots-v0_3_1.type = "github";
  inputs.src-roots-v0_3_1.owner = "BarrOff";
  inputs.src-roots-v0_3_1.repo = "roots";
  inputs.src-roots-v0_3_1.ref = "refs/tags/v0.3.1";
  inputs.src-roots-v0_3_1.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-roots-v0_3_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-roots-v0_3_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-roots-v0_3_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}