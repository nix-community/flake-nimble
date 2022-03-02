{
  description = ''Simple ECS implementation for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-tecs-v0_1.flake = false;
  inputs.src-tecs-v0_1.type = "github";
  inputs.src-tecs-v0_1.owner = "Timofffee";
  inputs.src-tecs-v0_1.repo = "tecs.nim";
  inputs.src-tecs-v0_1.ref = "refs/tags/v0.1";
  inputs.src-tecs-v0_1.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-tecs-v0_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-tecs-v0_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-tecs-v0_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}