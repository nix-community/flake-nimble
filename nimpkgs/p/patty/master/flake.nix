{
  description = ''Algebraic data types and pattern matching'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-patty-master.flake = false;
  inputs.src-patty-master.type = "github";
  inputs.src-patty-master.owner = "andreaferretti";
  inputs.src-patty-master.repo = "patty";
  inputs.src-patty-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-patty-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-patty-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-patty-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}