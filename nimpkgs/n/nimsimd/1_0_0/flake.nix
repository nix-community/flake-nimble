{
  description = ''Pleasant Nim bindings for SIMD instruction sets'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-nimsimd-1_0_0.flake = false;
  inputs.src-nimsimd-1_0_0.type = "github";
  inputs.src-nimsimd-1_0_0.owner = "guzba";
  inputs.src-nimsimd-1_0_0.repo = "nimsimd";
  inputs.src-nimsimd-1_0_0.ref = "refs/tags/1.0.0";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nimsimd-1_0_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimsimd-1_0_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimsimd-1_0_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}