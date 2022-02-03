{
  description = ''High level xml library for Nim'';
  inputs.src-xmltools-v0_1_5.flake = false;
  inputs.src-xmltools-v0_1_5.type = "github";
  inputs.src-xmltools-v0_1_5.owner = "vegansk";
  inputs.src-xmltools-v0_1_5.repo = "xmltools";
  inputs.src-xmltools-v0_1_5.ref = "refs/tags/v0.1.5";
  
  
  inputs."nimfp".url = "path:../../../n/nimfp";
  inputs."nimfp".type = "github";
  inputs."nimfp".owner = "riinr";
  inputs."nimfp".repo = "flake-nimble";
  inputs."nimfp".ref = "flake-pinning";
  inputs."nimfp".dir = "nimpkgs/n/nimfp";

  
  inputs."nimboost".url = "path:../../../n/nimboost";
  inputs."nimboost".type = "github";
  inputs."nimboost".owner = "riinr";
  inputs."nimboost".repo = "flake-nimble";
  inputs."nimboost".ref = "flake-pinning";
  inputs."nimboost".dir = "nimpkgs/n/nimboost";

  outputs = { self, nixpkgs, src-xmltools-v0_1_5, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-xmltools-v0_1_5;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-xmltools-v0_1_5"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}