{
  description = ''Monocypher'';
  inputs.src-monocypher-v0_2_1.flake = false;
  inputs.src-monocypher-v0_2_1.type = "github";
  inputs.src-monocypher-v0_2_1.owner = "markspanbroek";
  inputs.src-monocypher-v0_2_1.repo = "monocypher.nim";
  inputs.src-monocypher-v0_2_1.ref = "refs/tags/v0.2.1";
  
  
  inputs."nimterop".url = "path:../../../n/nimterop";
  inputs."nimterop".type = "github";
  inputs."nimterop".owner = "riinr";
  inputs."nimterop".repo = "flake-nimble";
  inputs."nimterop".ref = "flake-pinning";
  inputs."nimterop".dir = "nimpkgs/n/nimterop";

  
  inputs."sysrandom".url = "path:../../../s/sysrandom";
  inputs."sysrandom".type = "github";
  inputs."sysrandom".owner = "riinr";
  inputs."sysrandom".repo = "flake-nimble";
  inputs."sysrandom".ref = "flake-pinning";
  inputs."sysrandom".dir = "nimpkgs/s/sysrandom";

  outputs = { self, nixpkgs, src-monocypher-v0_2_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-monocypher-v0_2_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-monocypher-v0_2_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}