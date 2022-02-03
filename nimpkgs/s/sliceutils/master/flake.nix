{
  description = ''Utilities for and extensions to Slice/HSlice'';
  inputs.src-sliceutils-master.flake = false;
  inputs.src-sliceutils-master.type = "github";
  inputs.src-sliceutils-master.owner = "metagn";
  inputs.src-sliceutils-master.repo = "sliceutils";
  inputs.src-sliceutils-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-sliceutils-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-sliceutils-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-sliceutils-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}