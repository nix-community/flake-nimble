{
  description = ''Utilities for and extensions to Slice/HSlice'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-sliceutils-v0_1_12.flake = false;
  inputs.src-sliceutils-v0_1_12.type = "github";
  inputs.src-sliceutils-v0_1_12.owner = "metagn";
  inputs.src-sliceutils-v0_1_12.repo = "sliceutils";
  inputs.src-sliceutils-v0_1_12.ref = "refs/tags/v0.1.12";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-sliceutils-v0_1_12, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-sliceutils-v0_1_12;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-sliceutils-v0_1_12"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}