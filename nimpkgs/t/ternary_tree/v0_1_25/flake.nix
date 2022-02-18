{
  description = ''Structural sharing data structure of lists and maps.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-ternary_tree-v0_1_25.flake = false;
  inputs.src-ternary_tree-v0_1_25.type = "github";
  inputs.src-ternary_tree-v0_1_25.owner = "calcit-lang";
  inputs.src-ternary_tree-v0_1_25.repo = "ternary-tree";
  inputs.src-ternary_tree-v0_1_25.ref = "refs/tags/v0.1.25";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-ternary_tree-v0_1_25, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-ternary_tree-v0_1_25;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-ternary_tree-v0_1_25"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}