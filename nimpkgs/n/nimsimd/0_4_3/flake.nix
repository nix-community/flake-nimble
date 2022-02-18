{
  description = ''Pleasant Nim bindings for SIMD instruction sets'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-nimsimd-0_4_3.flake = false;
  inputs.src-nimsimd-0_4_3.type = "github";
  inputs.src-nimsimd-0_4_3.owner = "guzba";
  inputs.src-nimsimd-0_4_3.repo = "nimsimd";
  inputs.src-nimsimd-0_4_3.ref = "refs/tags/0.4.3";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nimsimd-0_4_3, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimsimd-0_4_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimsimd-0_4_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}