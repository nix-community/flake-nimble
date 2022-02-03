{
  description = ''Utilities for and extensions to Slice/HSlice'';
  inputs.src-sliceutils-v0_1_12.flake = false;
  inputs.src-sliceutils-v0_1_12.type = "github";
  inputs.src-sliceutils-v0_1_12.owner = "metagn";
  inputs.src-sliceutils-v0_1_12.repo = "sliceutils";
  inputs.src-sliceutils-v0_1_12.ref = "refs/tags/v0.1.12";
  
  outputs = { self, nixpkgs, src-sliceutils-v0_1_12, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-sliceutils-v0_1_12;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-sliceutils-v0_1_12"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}