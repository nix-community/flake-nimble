{
  description = ''SIMD-accelerated noise generation (Simplex, Perlin).'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-noisy-master.flake = false;
  inputs.src-noisy-master.type = "github";
  inputs.src-noisy-master.owner = "guzba";
  inputs.src-noisy-master.repo = "noisy";
  inputs.src-noisy-master.ref = "refs/heads/master";
  inputs.src-noisy-master.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."nimsimd".type = "github";
  # inputs."nimsimd".owner = "riinr";
  # inputs."nimsimd".repo = "flake-nimble";
  # inputs."nimsimd".ref = "flake-pinning";
  # inputs."nimsimd".dir = "nimpkgs/n/nimsimd";
  # inputs."nimsimd".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."nimsimd".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-noisy-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-noisy-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-noisy-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}