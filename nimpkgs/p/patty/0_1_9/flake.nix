{
  description = ''Algebraic data types and pattern matching'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-patty-0_1_9.flake = false;
  inputs.src-patty-0_1_9.type = "github";
  inputs.src-patty-0_1_9.owner = "andreaferretti";
  inputs.src-patty-0_1_9.repo = "patty";
  inputs.src-patty-0_1_9.ref = "refs/tags/0.1.9";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-patty-0_1_9, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-patty-0_1_9;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-patty-0_1_9"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}