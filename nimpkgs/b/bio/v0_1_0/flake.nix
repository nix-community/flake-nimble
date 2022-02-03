{
  description = ''Bytes utils for Nim.'';
  inputs.src-bio-v0_1_0.flake = false;
  inputs.src-bio-v0_1_0.type = "github";
  inputs.src-bio-v0_1_0.owner = "xzeshen";
  inputs.src-bio-v0_1_0.repo = "bio";
  inputs.src-bio-v0_1_0.ref = "refs/tags/v0.1.0";
  
  outputs = { self, nixpkgs, src-bio-v0_1_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-bio-v0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-bio-v0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}