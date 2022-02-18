{
  description = ''Structural sharing data structure of lists and maps.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-ternary_tree-v0_1_3.flake = false;
  inputs.src-ternary_tree-v0_1_3.type = "github";
  inputs.src-ternary_tree-v0_1_3.owner = "calcit-lang";
  inputs.src-ternary_tree-v0_1_3.repo = "ternary-tree";
  inputs.src-ternary_tree-v0_1_3.ref = "refs/tags/v0.1.3";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-ternary_tree-v0_1_3, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-ternary_tree-v0_1_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-ternary_tree-v0_1_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}