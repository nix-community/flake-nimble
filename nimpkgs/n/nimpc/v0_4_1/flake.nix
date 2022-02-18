{
  description = ''Secure multi-party computation'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-nimpc-v0_4_1.flake = false;
  inputs.src-nimpc-v0_4_1.type = "github";
  inputs.src-nimpc-v0_4_1.owner = "markspanbroek";
  inputs.src-nimpc-v0_4_1.repo = "nimpc";
  inputs.src-nimpc-v0_4_1.ref = "refs/tags/v0.4.1";
  
  
  inputs."sysrandom".type = "github";
  inputs."sysrandom".owner = "riinr";
  inputs."sysrandom".repo = "flake-nimble";
  inputs."sysrandom".ref = "flake-pinning";
  inputs."sysrandom".dir = "nimpkgs/s/sysrandom";

  
  inputs."simpleot".type = "github";
  inputs."simpleot".owner = "riinr";
  inputs."simpleot".repo = "flake-nimble";
  inputs."simpleot".ref = "flake-pinning";
  inputs."simpleot".dir = "nimpkgs/s/simpleot";

  
  inputs."monocypher".type = "github";
  inputs."monocypher".owner = "riinr";
  inputs."monocypher".repo = "flake-nimble";
  inputs."monocypher".ref = "flake-pinning";
  inputs."monocypher".dir = "nimpkgs/m/monocypher";

  outputs = { self, nixpkgs, flakeNimbleLib, src-nimpc-v0_4_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimpc-v0_4_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimpc-v0_4_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}