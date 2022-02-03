{
  description = ''Utilities for and extensions to Slice/HSlice'';
  inputs.src-sliceutils-v0_1_1.flake = false;
  inputs.src-sliceutils-v0_1_1.type = "github";
  inputs.src-sliceutils-v0_1_1.owner = "metagn";
  inputs.src-sliceutils-v0_1_1.repo = "sliceutils";
  inputs.src-sliceutils-v0_1_1.ref = "refs/tags/v0.1.1";
  
  outputs = { self, nixpkgs, src-sliceutils-v0_1_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-sliceutils-v0_1_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-sliceutils-v0_1_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}