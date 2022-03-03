{
  description = ''Structural sharing data structure of lists and maps.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-ternary_tree-master.flake = false;
  inputs.src-ternary_tree-master.type = "github";
  inputs.src-ternary_tree-master.owner = "calcit-lang";
  inputs.src-ternary_tree-master.repo = "ternary-tree";
  inputs.src-ternary_tree-master.ref = "refs/heads/master";
  inputs.src-ternary_tree-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-ternary_tree-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-ternary_tree-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-ternary_tree-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}