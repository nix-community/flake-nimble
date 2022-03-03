{
  description = ''SIMD-accelerated noise generation (Simplex, Perlin).'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-noisy-0_2_0.flake = false;
  inputs.src-noisy-0_2_0.type = "github";
  inputs.src-noisy-0_2_0.owner = "guzba";
  inputs.src-noisy-0_2_0.repo = "noisy";
  inputs.src-noisy-0_2_0.ref = "refs/tags/0.2.0";
  inputs.src-noisy-0_2_0.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-noisy-0_2_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-noisy-0_2_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-noisy-0_2_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}