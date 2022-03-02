{
  description = ''Structural sharing data structure of lists and maps.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-ternary_tree-v0_1_9.flake = false;
  inputs.src-ternary_tree-v0_1_9.type = "github";
  inputs.src-ternary_tree-v0_1_9.owner = "calcit-lang";
  inputs.src-ternary_tree-v0_1_9.repo = "ternary-tree";
  inputs.src-ternary_tree-v0_1_9.ref = "refs/tags/v0.1.9";
  inputs.src-ternary_tree-v0_1_9.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-ternary_tree-v0_1_9, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-ternary_tree-v0_1_9;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-ternary_tree-v0_1_9"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}