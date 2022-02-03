{
  description = ''Utilities with dealing with 1d and 2d bit arrays.'';
  inputs.src-bitty-0_1_0.flake = false;
  inputs.src-bitty-0_1_0.type = "github";
  inputs.src-bitty-0_1_0.owner = "treeform";
  inputs.src-bitty-0_1_0.repo = "bitty";
  inputs.src-bitty-0_1_0.ref = "refs/tags/0.1.0";
  
  outputs = { self, nixpkgs, src-bitty-0_1_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-bitty-0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-bitty-0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}