{
  description = ''Monocypher'';
  inputs.src-monocypher-master.flake = false;
  inputs.src-monocypher-master.type = "github";
  inputs.src-monocypher-master.owner = "markspanbroek";
  inputs.src-monocypher-master.repo = "monocypher.nim";
  inputs.src-monocypher-master.ref = "refs/heads/master";
  
  
  inputs."nimterop".type = "github";
  inputs."nimterop".owner = "riinr";
  inputs."nimterop".repo = "flake-nimble";
  inputs."nimterop".ref = "flake-pinning";
  inputs."nimterop".dir = "nimpkgs/n/nimterop";

  
  inputs."sysrandom".type = "github";
  inputs."sysrandom".owner = "riinr";
  inputs."sysrandom".repo = "flake-nimble";
  inputs."sysrandom".ref = "flake-pinning";
  inputs."sysrandom".dir = "nimpkgs/s/sysrandom";

  outputs = { self, nixpkgs, src-monocypher-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-monocypher-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-monocypher-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}