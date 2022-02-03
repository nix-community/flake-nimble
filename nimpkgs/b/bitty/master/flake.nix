{
  description = ''Utilities with dealing with 1d and 2d bit arrays.'';
  inputs.src-bitty-master.flake = false;
  inputs.src-bitty-master.type = "github";
  inputs.src-bitty-master.owner = "treeform";
  inputs.src-bitty-master.repo = "bitty";
  inputs.src-bitty-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-bitty-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-bitty-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-bitty-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}