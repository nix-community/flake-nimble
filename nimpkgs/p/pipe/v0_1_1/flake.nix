{
  description = ''Pipe operator for nim.'';
  inputs.src-pipe-v0_1_1.flake = false;
  inputs.src-pipe-v0_1_1.type = "github";
  inputs.src-pipe-v0_1_1.owner = "CosmicToast";
  inputs.src-pipe-v0_1_1.repo = "pipe";
  inputs.src-pipe-v0_1_1.ref = "refs/tags/v0.1.1";
  
  outputs = { self, nixpkgs, src-pipe-v0_1_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-pipe-v0_1_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-pipe-v0_1_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}