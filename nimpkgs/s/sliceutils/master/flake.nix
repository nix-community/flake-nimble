{
  description = ''Utilities for and extensions to Slice/HSlice'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-sliceutils-master.flake = false;
  inputs.src-sliceutils-master.type = "github";
  inputs.src-sliceutils-master.owner = "metagn";
  inputs.src-sliceutils-master.repo = "sliceutils";
  inputs.src-sliceutils-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-sliceutils-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-sliceutils-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-sliceutils-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}