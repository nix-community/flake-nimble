{
  description = ''A nim wrapper for ArrayFire'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-arrayfirenim-master.flake = false;
  inputs.src-arrayfirenim-master.type = "github";
  inputs.src-arrayfirenim-master.owner = "bitstormGER";
  inputs.src-arrayfirenim-master.repo = "arrayfire-Nim";
  inputs.src-arrayfirenim-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-arrayfirenim-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-arrayfirenim-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-arrayfirenim-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}