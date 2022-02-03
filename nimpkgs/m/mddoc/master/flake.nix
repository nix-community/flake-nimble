{
  description = ''Generated Nim's API docs in markdown for github's README.md files. Great for small libraries with simple APIs.'';
  inputs.src-mddoc-master.flake = false;
  inputs.src-mddoc-master.type = "github";
  inputs.src-mddoc-master.owner = "treeform";
  inputs.src-mddoc-master.repo = "mddoc";
  inputs.src-mddoc-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-mddoc-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-mddoc-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-mddoc-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}