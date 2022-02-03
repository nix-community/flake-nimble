{
  description = ''Utilities with dealing with 1d and 2d bit arrays.'';
  inputs.src-bitty-0_1_4.flake = false;
  inputs.src-bitty-0_1_4.type = "github";
  inputs.src-bitty-0_1_4.owner = "treeform";
  inputs.src-bitty-0_1_4.repo = "bitty";
  inputs.src-bitty-0_1_4.ref = "refs/tags/0.1.4";
  
  outputs = { self, nixpkgs, src-bitty-0_1_4, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-bitty-0_1_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-bitty-0_1_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}