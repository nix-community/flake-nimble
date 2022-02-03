{
  description = ''Nim functional programming library'';
  inputs.src-nimfp-v0_0_3.flake = false;
  inputs.src-nimfp-v0_0_3.type = "github";
  inputs.src-nimfp-v0_0_3.owner = "vegansk";
  inputs.src-nimfp-v0_0_3.repo = "nimfp";
  inputs.src-nimfp-v0_0_3.ref = "refs/tags/v0.0.3";
  
  outputs = { self, nixpkgs, src-nimfp-v0_0_3, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimfp-v0_0_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimfp-v0_0_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}