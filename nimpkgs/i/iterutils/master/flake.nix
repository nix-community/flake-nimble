{
  description = ''Functional operations for iterators and slices, similar to sequtils'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-iterutils-master.flake = false;
  inputs.src-iterutils-master.type = "github";
  inputs.src-iterutils-master.owner = "def-";
  inputs.src-iterutils-master.repo = "iterutils";
  inputs.src-iterutils-master.ref = "refs/heads/master";
  inputs.src-iterutils-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-iterutils-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-iterutils-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-iterutils-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}