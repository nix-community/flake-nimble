{
  description = ''Nim functional programming library'';
  inputs.src-nimfp-v0_3_7.flake = false;
  inputs.src-nimfp-v0_3_7.type = "github";
  inputs.src-nimfp-v0_3_7.owner = "vegansk";
  inputs.src-nimfp-v0_3_7.repo = "nimfp";
  inputs.src-nimfp-v0_3_7.ref = "refs/tags/v0.3.7";
  
  
  inputs."nimboost".type = "github";
  inputs."nimboost".owner = "riinr";
  inputs."nimboost".repo = "flake-nimble";
  inputs."nimboost".ref = "flake-pinning";
  inputs."nimboost".dir = "nimpkgs/n/nimboost";

  
  inputs."classy".type = "github";
  inputs."classy".owner = "riinr";
  inputs."classy".repo = "flake-nimble";
  inputs."classy".ref = "flake-pinning";
  inputs."classy".dir = "nimpkgs/c/classy";

  outputs = { self, nixpkgs, src-nimfp-v0_3_7, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimfp-v0_3_7;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimfp-v0_3_7"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}