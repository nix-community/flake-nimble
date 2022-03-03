{
  description = ''Generated Nim's API docs in markdown for github's README.md files. Great for small libraries with simple APIs.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-mddoc-master.flake = false;
  inputs.src-mddoc-master.type = "github";
  inputs.src-mddoc-master.owner = "treeform";
  inputs.src-mddoc-master.repo = "mddoc";
  inputs.src-mddoc-master.ref = "refs/heads/master";
  inputs.src-mddoc-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-mddoc-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-mddoc-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-mddoc-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}