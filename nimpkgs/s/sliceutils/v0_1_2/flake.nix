{
  description = ''Utilities for and extensions to Slice/HSlice'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-sliceutils-v0_1_2.flake = false;
  inputs.src-sliceutils-v0_1_2.type = "github";
  inputs.src-sliceutils-v0_1_2.owner = "metagn";
  inputs.src-sliceutils-v0_1_2.repo = "sliceutils";
  inputs.src-sliceutils-v0_1_2.ref = "refs/tags/v0.1.2";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-sliceutils-v0_1_2, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-sliceutils-v0_1_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-sliceutils-v0_1_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}