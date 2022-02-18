{
  description = ''A nim wrapper for ArrayFire'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-arrayfirenim-v0_2_2.flake = false;
  inputs.src-arrayfirenim-v0_2_2.type = "github";
  inputs.src-arrayfirenim-v0_2_2.owner = "bitstormGER";
  inputs.src-arrayfirenim-v0_2_2.repo = "arrayfire-Nim";
  inputs.src-arrayfirenim-v0_2_2.ref = "refs/tags/v0.2.2";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-arrayfirenim-v0_2_2, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-arrayfirenim-v0_2_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-arrayfirenim-v0_2_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}