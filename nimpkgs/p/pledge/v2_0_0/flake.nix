{
  description = ''OpenBSDs pledge(2) for Nim.'';
  inputs.src-pledge-v2_0_0.flake = false;
  inputs.src-pledge-v2_0_0.type = "github";
  inputs.src-pledge-v2_0_0.owner = "euantorano";
  inputs.src-pledge-v2_0_0.repo = "pledge.nim";
  inputs.src-pledge-v2_0_0.ref = "refs/tags/v2.0.0";
  
  outputs = { self, nixpkgs, src-pledge-v2_0_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-pledge-v2_0_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-pledge-v2_0_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}