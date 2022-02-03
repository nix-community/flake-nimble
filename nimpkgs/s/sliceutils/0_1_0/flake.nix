{
  description = ''Utilities for and extensions to Slice/HSlice'';
  inputs.src-sliceutils-0_1_0.flake = false;
  inputs.src-sliceutils-0_1_0.type = "github";
  inputs.src-sliceutils-0_1_0.owner = "metagn";
  inputs.src-sliceutils-0_1_0.repo = "sliceutils";
  inputs.src-sliceutils-0_1_0.ref = "refs/tags/0.1.0";
  
  outputs = { self, nixpkgs, src-sliceutils-0_1_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-sliceutils-0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-sliceutils-0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}