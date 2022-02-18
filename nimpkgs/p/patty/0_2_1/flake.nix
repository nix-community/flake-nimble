{
  description = ''Algebraic data types and pattern matching'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-patty-0_2_1.flake = false;
  inputs.src-patty-0_2_1.type = "github";
  inputs.src-patty-0_2_1.owner = "andreaferretti";
  inputs.src-patty-0_2_1.repo = "patty";
  inputs.src-patty-0_2_1.ref = "refs/tags/0.2.1";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-patty-0_2_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-patty-0_2_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-patty-0_2_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}