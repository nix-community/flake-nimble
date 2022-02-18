{
  description = ''Structural sharing data structure of lists and maps.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-ternary_tree-v0_1_8.flake = false;
  inputs.src-ternary_tree-v0_1_8.type = "github";
  inputs.src-ternary_tree-v0_1_8.owner = "calcit-lang";
  inputs.src-ternary_tree-v0_1_8.repo = "ternary-tree";
  inputs.src-ternary_tree-v0_1_8.ref = "refs/tags/v0.1.8";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-ternary_tree-v0_1_8, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-ternary_tree-v0_1_8;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-ternary_tree-v0_1_8"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}