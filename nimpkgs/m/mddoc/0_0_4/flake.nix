{
  description = ''Generated Nim's API docs in markdown for github's README.md files. Great for small libraries with simple APIs.'';
  inputs.src-mddoc-0_0_4.flake = false;
  inputs.src-mddoc-0_0_4.type = "github";
  inputs.src-mddoc-0_0_4.owner = "treeform";
  inputs.src-mddoc-0_0_4.repo = "mddoc";
  inputs.src-mddoc-0_0_4.ref = "refs/tags/0.0.4";
  
  outputs = { self, nixpkgs, src-mddoc-0_0_4, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-mddoc-0_0_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-mddoc-0_0_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}