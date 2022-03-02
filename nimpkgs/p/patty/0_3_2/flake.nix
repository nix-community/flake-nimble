{
  description = ''Algebraic data types and pattern matching'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-patty-0_3_2.flake = false;
  inputs.src-patty-0_3_2.type = "github";
  inputs.src-patty-0_3_2.owner = "andreaferretti";
  inputs.src-patty-0_3_2.repo = "patty";
  inputs.src-patty-0_3_2.ref = "refs/tags/0.3.2";
  inputs.src-patty-0_3_2.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-patty-0_3_2, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-patty-0_3_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-patty-0_3_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}