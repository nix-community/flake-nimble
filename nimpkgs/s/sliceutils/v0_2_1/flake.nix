{
  description = ''Utilities for and extensions to Slice/HSlice'';
  inputs.src-sliceutils-v0_2_1.flake = false;
  inputs.src-sliceutils-v0_2_1.type = "github";
  inputs.src-sliceutils-v0_2_1.owner = "metagn";
  inputs.src-sliceutils-v0_2_1.repo = "sliceutils";
  inputs.src-sliceutils-v0_2_1.ref = "refs/tags/v0.2.1";
  
  outputs = { self, nixpkgs, src-sliceutils-v0_2_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-sliceutils-v0_2_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-sliceutils-v0_2_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}