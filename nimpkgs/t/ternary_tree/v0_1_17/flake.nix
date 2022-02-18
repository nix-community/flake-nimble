{
  description = ''Structural sharing data structure of lists and maps.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-ternary_tree-v0_1_17.flake = false;
  inputs.src-ternary_tree-v0_1_17.type = "github";
  inputs.src-ternary_tree-v0_1_17.owner = "calcit-lang";
  inputs.src-ternary_tree-v0_1_17.repo = "ternary-tree";
  inputs.src-ternary_tree-v0_1_17.ref = "refs/tags/v0.1.17";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-ternary_tree-v0_1_17, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-ternary_tree-v0_1_17;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-ternary_tree-v0_1_17"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}