{
  description = ''Method & assignment cascades for Nim, inspired by Smalltalk & Dart.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-cascade-master.flake = false;
  inputs.src-cascade-master.type = "github";
  inputs.src-cascade-master.owner = "haltcase";
  inputs.src-cascade-master.repo = "cascade";
  inputs.src-cascade-master.ref = "refs/heads/master";
  inputs.src-cascade-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-cascade-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-cascade-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-cascade-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}