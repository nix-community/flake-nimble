{
  description = ''Algebraic data types and pattern matching'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-patty-0_1_8.flake = false;
  inputs.src-patty-0_1_8.type = "github";
  inputs.src-patty-0_1_8.owner = "andreaferretti";
  inputs.src-patty-0_1_8.repo = "patty";
  inputs.src-patty-0_1_8.ref = "refs/tags/0.1.8";
  inputs.src-patty-0_1_8.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-patty-0_1_8, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-patty-0_1_8;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-patty-0_1_8"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}