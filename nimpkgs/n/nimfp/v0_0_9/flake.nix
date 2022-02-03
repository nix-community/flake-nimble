{
  description = ''Nim functional programming library'';
  inputs.src-nimfp-v0_0_9.flake = false;
  inputs.src-nimfp-v0_0_9.type = "github";
  inputs.src-nimfp-v0_0_9.owner = "vegansk";
  inputs.src-nimfp-v0_0_9.repo = "nimfp";
  inputs.src-nimfp-v0_0_9.ref = "refs/tags/v0.0.9";
  
  outputs = { self, nixpkgs, src-nimfp-v0_0_9, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimfp-v0_0_9;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimfp-v0_0_9"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}