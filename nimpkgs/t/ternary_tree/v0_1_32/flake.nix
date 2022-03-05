{
  description = ''Structural sharing data structure of lists and maps.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-ternary_tree-v0_1_32.flake = false;
  inputs.src-ternary_tree-v0_1_32.type = "github";
  inputs.src-ternary_tree-v0_1_32.owner = "calcit-lang";
  inputs.src-ternary_tree-v0_1_32.repo = "ternary-tree";
  inputs.src-ternary_tree-v0_1_32.ref = "refs/tags/v0.1.32";
  inputs.src-ternary_tree-v0_1_32.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-ternary_tree-v0_1_32, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-ternary_tree-v0_1_32;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-ternary_tree-v0_1_32"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}