{
  description = ''Secure multi-party computation'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-NiMPC-v0_1_0.flake = false;
  inputs.src-NiMPC-v0_1_0.type = "github";
  inputs.src-NiMPC-v0_1_0.owner = "markspanbroek";
  inputs.src-NiMPC-v0_1_0.repo = "nimpc";
  inputs.src-NiMPC-v0_1_0.ref = "refs/tags/v0.1.0";
  inputs.src-NiMPC-v0_1_0.inputs.nixpkgs.follows = "nixpkgs";
  
  
  inputs."sysrandom".type = "github";
  inputs."sysrandom".owner = "riinr";
  inputs."sysrandom".repo = "flake-nimble";
  inputs."sysrandom".ref = "flake-pinning";
  inputs."sysrandom".dir = "nimpkgs/s/sysrandom";
  inputs."sysrandom".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sysrandom".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."simpleot".type = "github";
  inputs."simpleot".owner = "riinr";
  inputs."simpleot".repo = "flake-nimble";
  inputs."simpleot".ref = "flake-pinning";
  inputs."simpleot".dir = "nimpkgs/s/simpleot";
  inputs."simpleot".inputs.nixpkgs.follows = "nixpkgs";
  inputs."simpleot".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-NiMPC-v0_1_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-NiMPC-v0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-NiMPC-v0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}