{
  description = ''Z3 binding for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-z3nim-master.flake = false;
  inputs.src-z3nim-master.type = "github";
  inputs.src-z3nim-master.owner = "Double-oxygeN";
  inputs.src-z3nim-master.repo = "z3nim";
  inputs.src-z3nim-master.ref = "refs/heads/master";
  inputs.src-z3nim-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-z3nim-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-z3nim-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-z3nim-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}