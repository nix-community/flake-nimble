{
  description = ''Pleasant Nim bindings for SIMD instruction sets'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-nimsimd-master.flake = false;
  inputs.src-nimsimd-master.type = "github";
  inputs.src-nimsimd-master.owner = "guzba";
  inputs.src-nimsimd-master.repo = "nimsimd";
  inputs.src-nimsimd-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nimsimd-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimsimd-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimsimd-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}