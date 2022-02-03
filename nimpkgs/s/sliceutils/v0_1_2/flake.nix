{
  description = ''Utilities for and extensions to Slice/HSlice'';
  inputs.src-sliceutils-v0_1_2.flake = false;
  inputs.src-sliceutils-v0_1_2.type = "github";
  inputs.src-sliceutils-v0_1_2.owner = "metagn";
  inputs.src-sliceutils-v0_1_2.repo = "sliceutils";
  inputs.src-sliceutils-v0_1_2.ref = "refs/tags/v0.1.2";
  
  outputs = { self, nixpkgs, src-sliceutils-v0_1_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-sliceutils-v0_1_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-sliceutils-v0_1_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}