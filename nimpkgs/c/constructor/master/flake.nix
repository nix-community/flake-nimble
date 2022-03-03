{
  description = ''Nim macros to aid in object construction including event programming, and constructors.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-constructor-master.flake = false;
  inputs.src-constructor-master.type = "github";
  inputs.src-constructor-master.owner = "beef331";
  inputs.src-constructor-master.repo = "constructor";
  inputs.src-constructor-master.ref = "refs/heads/master";
  inputs.src-constructor-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-constructor-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-constructor-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-constructor-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}