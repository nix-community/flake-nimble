{
  description = ''Nim functional programming library'';
  inputs.src-nimfp-v0_4_0.flake = false;
  inputs.src-nimfp-v0_4_0.type = "github";
  inputs.src-nimfp-v0_4_0.owner = "vegansk";
  inputs.src-nimfp-v0_4_0.repo = "nimfp";
  inputs.src-nimfp-v0_4_0.ref = "refs/tags/v0.4.0";
  
  
  inputs."nimboost".url = "path:../../../n/nimboost";
  inputs."nimboost".type = "github";
  inputs."nimboost".owner = "riinr";
  inputs."nimboost".repo = "flake-nimble";
  inputs."nimboost".ref = "flake-pinning";
  inputs."nimboost".dir = "nimpkgs/n/nimboost";

  
  inputs."classy".url = "path:../../../c/classy";
  inputs."classy".type = "github";
  inputs."classy".owner = "riinr";
  inputs."classy".repo = "flake-nimble";
  inputs."classy".ref = "flake-pinning";
  inputs."classy".dir = "nimpkgs/c/classy";

  outputs = { self, nixpkgs, src-nimfp-v0_4_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimfp-v0_4_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimfp-v0_4_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}