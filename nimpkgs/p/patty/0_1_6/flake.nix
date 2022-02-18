{
  description = ''Algebraic data types and pattern matching'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-patty-0_1_6.flake = false;
  inputs.src-patty-0_1_6.type = "github";
  inputs.src-patty-0_1_6.owner = "andreaferretti";
  inputs.src-patty-0_1_6.repo = "patty";
  inputs.src-patty-0_1_6.ref = "refs/tags/0.1.6";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-patty-0_1_6, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-patty-0_1_6;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-patty-0_1_6"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}