{
  description = ''SIMD-accelerated noise generation (Simplex, Perlin).'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-noisy-0_1_0.flake = false;
  inputs.src-noisy-0_1_0.type = "github";
  inputs.src-noisy-0_1_0.owner = "guzba";
  inputs.src-noisy-0_1_0.repo = "noisy";
  inputs.src-noisy-0_1_0.ref = "refs/tags/0.1.0";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-noisy-0_1_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-noisy-0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-noisy-0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}