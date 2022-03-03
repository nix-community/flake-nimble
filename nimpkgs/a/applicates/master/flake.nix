{
  description = ''"pointers" to cached AST that instantiate routines when called'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-applicates-master.flake = false;
  inputs.src-applicates-master.type = "github";
  inputs.src-applicates-master.owner = "metagn";
  inputs.src-applicates-master.repo = "applicates";
  inputs.src-applicates-master.ref = "refs/heads/master";
  inputs.src-applicates-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-applicates-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-applicates-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-applicates-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}