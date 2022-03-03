{
  description = ''Generated Nim's API docs in markdown for github's README.md files. Great for small libraries with simple APIs.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-mddoc-0_0_3.flake = false;
  inputs.src-mddoc-0_0_3.type = "github";
  inputs.src-mddoc-0_0_3.owner = "treeform";
  inputs.src-mddoc-0_0_3.repo = "mddoc";
  inputs.src-mddoc-0_0_3.ref = "refs/tags/0.0.3";
  inputs.src-mddoc-0_0_3.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-mddoc-0_0_3, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-mddoc-0_0_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-mddoc-0_0_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}