{
  description = ''Simple vector library for nim-lang.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-simple_vector-master.flake = false;
  inputs.src-simple_vector-master.type = "github";
  inputs.src-simple_vector-master.owner = "Ephiiz";
  inputs.src-simple_vector-master.repo = "simple_vector";
  inputs.src-simple_vector-master.ref = "refs/heads/master";
  inputs.src-simple_vector-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-simple_vector-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-simple_vector-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-simple_vector-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}