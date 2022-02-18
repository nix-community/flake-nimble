{
  description = ''Generated Nim's API docs in markdown for github's README.md files. Great for small libraries with simple APIs.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-mddoc-0_0_1.flake = false;
  inputs.src-mddoc-0_0_1.type = "github";
  inputs.src-mddoc-0_0_1.owner = "treeform";
  inputs.src-mddoc-0_0_1.repo = "mddoc";
  inputs.src-mddoc-0_0_1.ref = "refs/tags/0.0.1";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-mddoc-0_0_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-mddoc-0_0_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-mddoc-0_0_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}