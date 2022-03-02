{
  description = ''Algebraic data types and pattern matching'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-patty-0_1_7.flake = false;
  inputs.src-patty-0_1_7.type = "github";
  inputs.src-patty-0_1_7.owner = "andreaferretti";
  inputs.src-patty-0_1_7.repo = "patty";
  inputs.src-patty-0_1_7.ref = "refs/tags/0.1.7";
  inputs.src-patty-0_1_7.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-patty-0_1_7, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-patty-0_1_7;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-patty-0_1_7"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}