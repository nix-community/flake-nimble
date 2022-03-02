{
  description = ''Structural sharing data structure of lists and maps.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-ternary_tree-v0_1_27.flake = false;
  inputs.src-ternary_tree-v0_1_27.type = "github";
  inputs.src-ternary_tree-v0_1_27.owner = "calcit-lang";
  inputs.src-ternary_tree-v0_1_27.repo = "ternary-tree";
  inputs.src-ternary_tree-v0_1_27.ref = "refs/tags/v0.1.27";
  inputs.src-ternary_tree-v0_1_27.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-ternary_tree-v0_1_27, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-ternary_tree-v0_1_27;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-ternary_tree-v0_1_27"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}