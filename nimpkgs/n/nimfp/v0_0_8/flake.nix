{
  description = ''Nim functional programming library'';
  inputs.src-nimfp-v0_0_8.flake = false;
  inputs.src-nimfp-v0_0_8.type = "github";
  inputs.src-nimfp-v0_0_8.owner = "vegansk";
  inputs.src-nimfp-v0_0_8.repo = "nimfp";
  inputs.src-nimfp-v0_0_8.ref = "refs/tags/v0.0.8";
  
  outputs = { self, nixpkgs, src-nimfp-v0_0_8, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimfp-v0_0_8;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimfp-v0_0_8"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}