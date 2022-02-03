{
  description = ''Glob pattern matching for Nim.'';
  inputs.src-globby-0_1_0.flake = false;
  inputs.src-globby-0_1_0.type = "github";
  inputs.src-globby-0_1_0.owner = "treeform";
  inputs.src-globby-0_1_0.repo = "globby";
  inputs.src-globby-0_1_0.ref = "refs/tags/0.1.0";
  
  outputs = { self, nixpkgs, src-globby-0_1_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-globby-0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-globby-0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}