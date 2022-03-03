{
  description = ''Monocypher'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-monocypher-master.flake = false;
  inputs.src-monocypher-master.type = "github";
  inputs.src-monocypher-master.owner = "markspanbroek";
  inputs.src-monocypher-master.repo = "monocypher.nim";
  inputs.src-monocypher-master.ref = "refs/heads/master";
  inputs.src-monocypher-master.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."nimterop".type = "github";
  # inputs."nimterop".owner = "riinr";
  # inputs."nimterop".repo = "flake-nimble";
  # inputs."nimterop".ref = "flake-pinning";
  # inputs."nimterop".dir = "nimpkgs/n/nimterop";
  # inputs."nimterop".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."nimterop".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."sysrandom".type = "github";
  # inputs."sysrandom".owner = "riinr";
  # inputs."sysrandom".repo = "flake-nimble";
  # inputs."sysrandom".ref = "flake-pinning";
  # inputs."sysrandom".dir = "nimpkgs/s/sysrandom";
  # inputs."sysrandom".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."sysrandom".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-monocypher-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-monocypher-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-monocypher-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}