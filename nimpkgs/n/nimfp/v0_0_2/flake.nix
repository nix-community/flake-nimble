{
  description = ''Nim functional programming library'';
  inputs.src-nimfp-v0_0_2.flake = false;
  inputs.src-nimfp-v0_0_2.type = "github";
  inputs.src-nimfp-v0_0_2.owner = "vegansk";
  inputs.src-nimfp-v0_0_2.repo = "nimfp";
  inputs.src-nimfp-v0_0_2.ref = "refs/tags/v0.0.2";
  
  outputs = { self, nixpkgs, src-nimfp-v0_0_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimfp-v0_0_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimfp-v0_0_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}