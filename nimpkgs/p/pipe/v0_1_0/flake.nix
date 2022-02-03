{
  description = ''Pipe operator for nim.'';
  inputs.src-pipe-v0_1_0.flake = false;
  inputs.src-pipe-v0_1_0.type = "github";
  inputs.src-pipe-v0_1_0.owner = "CosmicToast";
  inputs.src-pipe-v0_1_0.repo = "pipe";
  inputs.src-pipe-v0_1_0.ref = "refs/tags/v0.1.0";
  
  outputs = { self, nixpkgs, src-pipe-v0_1_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-pipe-v0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-pipe-v0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}